package com.jokui.rao.alarm_calendar;

import android.app.Activity;
import android.app.Application;
import android.os.Build;

import java.lang.ref.WeakReference;
import java.util.List;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** AlarmCalendarPlugin */
public class AlarmCalendarPlugin implements FlutterPlugin, MethodCallHandler, ActivityAware {

  private MethodChannel mMethodChannel = null;
  private Application mApplication = null;
  private WeakReference<Activity> mActivity = null;

  @Override
  public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
    mMethodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "alarm_calendar");
    mApplication = (Application) flutterPluginBinding.getApplicationContext();
    mMethodChannel.setMethodCallHandler(this);
  }


  public AlarmCalendarPlugin initPlugin(MethodChannel methodChannel, Registrar registrar) {
    mMethodChannel = methodChannel;
    mApplication = (Application) registrar.context().getApplicationContext();
    mActivity = new WeakReference<>(registrar.activity());
    return this;
  }
  // This static function is optional and equivalent to onAttachedToEngine. It supports the old
  // pre-Flutter-1.12 Android projects. You are encouraged to continue supporting
  // plugin registration via this function while apps migrate to use the new Android APIs
  // post-flutter-1.12 via https://flutter.dev/go/android-project-migration.
  //
  // It is encouraged to share logic between onAttachedToEngine and registerWith to keep
  // them functionally equivalent. Only one of onAttachedToEngine or registerWith will be called
  // depending on the user's project. onAttachedToEngine or registerWith must both be defined
  // in the same class.
  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "add_calendar");
    channel.setMethodCallHandler(new AlarmCalendarPlugin().initPlugin(channel,registrar));
  }

  @RequiresApi(api = Build.VERSION_CODES.N)
  @Override
  public void onMethodCall(@NonNull MethodCall call, @NonNull Result result) {
    switch (call.method){
      case "createEvent" :
        String title = call.argument("title");
        String note = call.argument("note");
        List<Integer> alert = call.argument("alert");
        Long beginTime = call.argument("beginTime");
        Long endTime = call.argument("endTime");
        String eventId = call.argument("eventId");
        int allDay = call.argument("allDay");
        Calendars calendars = new Calendars(title,note,alert,eventId,beginTime,endTime,allDay);
        String resAdd = CalendarProviderUtil.addEvent(mActivity.get(),calendars);
        result.success(resAdd);
        break;
      case "deleteEvent" :
        String eventId0 = call.argument("eventId");
        boolean resDel = CalendarProviderUtil.deleteEvent(mActivity.get(),eventId0);
        result.success(resDel);
        break;
      case "updateEvent" :
        String title1 = call.argument("title");
        String note1 = call.argument("note");
        List<Integer> alert1 = call.argument("alert");
        Long beginTime1 = call.argument("beginTime");
        Long endTime1 = call.argument("endTime");
        String eventId1 = call.argument("eventId");
        int allDay1 = call.argument("allDay");
        Calendars calendars1 = new Calendars(title1,note1,alert1,eventId1,beginTime1,endTime1,allDay1);
        String resUp = CalendarProviderUtil.updateEvent(mActivity.get(),calendars1);
        result.success(resUp);
        break;
      case "CheckReadPermission" :
        boolean resRead = CalendarProviderUtil.CheckCalendarReadPermission(mActivity.get());
        result.success(resRead);
        break;
      case "CheckWritePermission" :
        boolean resWrite = CalendarProviderUtil.CheckCalendarWritePermission(mActivity.get());
        result.success(resWrite);
        break;
    }
  }

  @Override
  public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
    mMethodChannel.setMethodCallHandler(null);
    mMethodChannel = null;
  }

  @Override
  public void onAttachedToActivity(ActivityPluginBinding binding) {
    mActivity = new WeakReference<>(binding.getActivity());
  }

  @Override
  public void onDetachedFromActivityForConfigChanges() {

  }

  @Override
  public void onReattachedToActivityForConfigChanges(ActivityPluginBinding binding) {

  }

  @Override
  public void onDetachedFromActivity() {
    mActivity = null;
  }
}
