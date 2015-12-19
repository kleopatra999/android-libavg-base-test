# Android.mk
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := base
LOCAL_SRC_FILES := FileHelper.cpp Exception.cpp Logger.cpp \
    ConfigMgr.cpp XMLHelper.cpp TimeSource.cpp OSHelper.cpp \
    ProfilingZone.cpp ThreadProfiler.cpp ScopeTimer.cpp Test.cpp \
    TestSuite.cpp ObjectCounter.cpp Directory.cpp DirEntry.cpp \
    StringHelper.cpp MathHelper.cpp GeomHelper.cpp CubicSpline.cpp \
    BezierCurve.cpp UTF8String.cpp Triangle.cpp Triangulate.cpp DAG.cpp WideLine.cpp \
    Backtrace.cpp ProfilingZoneID.cpp GLMHelper.cpp \
    StandardLogSink.cpp ThreadHelper.cpp
LOCAL_STATIC_LIBRARIES := libxml2_static
LOCAL_SHARED_LIBRARIES := boost_system_shared
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE 	:= testbase
LOCAL_SRC_FILES := testbase.cpp
LOCAL_SHARED_LIBRARIES := boost_system_shared
LOCAL_STATIC_LIBRARIES := libxml2_static
include $(BUILD_EXECUTABLE)

#$(call import-module,python/3.5)
$(call import-module,boost/1.59.0)
$(call import-module,libxml2/2.7.8)
