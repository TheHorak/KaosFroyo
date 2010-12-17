.class public final Landroid/os/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Debug$1;,
        Landroid/os/Debug$DebugProperty;,
        Landroid/os/Debug$InstructionCount;,
        Landroid/os/Debug$MemoryInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_TRACE_BODY:Ljava/lang/String; = "dmtrace"

.field private static final DEFAULT_TRACE_EXTENSION:Ljava/lang/String; = ".trace"

.field private static final DEFAULT_TRACE_FILE_PATH:Ljava/lang/String; = null

.field private static final DEFAULT_TRACE_PATH_PREFIX:Ljava/lang/String; = null

.field private static final MIN_DEBUGGER_IDLE:I = 0x514

.field public static final SHOW_CLASSLOADER:I = 0x2

.field public static final SHOW_FULL_DETAIL:I = 0x1

.field public static final SHOW_INITIALIZED:I = 0x4

.field private static final SPIN_DELAY:I = 0xc8

.field private static final SYSFS_QEMU_TRACE_STATE:Ljava/lang/String; = "/sys/qemu_trace/state"

.field private static final TAG:Ljava/lang/String; = "Debug"

.field public static final TRACE_COUNT_ALLOCS:I = 0x1

.field private static final debugProperties:Lcom/android/internal/util/TypedProperties;

.field private static volatile mWaiting:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/Debug;->mWaiting:Z

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Debug;->DEFAULT_TRACE_PATH_PREFIX:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Debug;->DEFAULT_TRACE_PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dmtrace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".trace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Debug;->DEFAULT_TRACE_FILE_PATH:Ljava/lang/String;

    .line 947
    const/4 v0, 0x0

    sput-object v0, Landroid/os/Debug;->debugProperties:Lcom/android/internal/util/TypedProperties;

    .line 949
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final cacheRegisterMap(Ljava/lang/String;)Z
    .registers 2
    .parameter "classAndMethodDesc"

    .prologue
    .line 803
    invoke-static {p0}, Ldalvik/system/VMDebug;->cacheRegisterMap(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static changeDebugPort(I)V
    .registers 1
    .parameter "port"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 286
    return-void
.end method

.method public static dumpHprofData(Ljava/lang/String;)V
    .registers 1
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 742
    invoke-static {p0}, Ldalvik/system/VMDebug;->dumpHprofData(Ljava/lang/String;)V

    .line 743
    return-void
.end method

.method public static dumpHprofDataDdms()V
    .registers 0

    .prologue
    .line 754
    invoke-static {}, Ldalvik/system/VMDebug;->dumpHprofDataDdms()V

    .line 755
    return-void
.end method

.method public static final dumpReferenceTables()V
    .registers 0

    .prologue
    .line 813
    invoke-static {}, Ldalvik/system/VMDebug;->dumpReferenceTables()V

    .line 814
    return-void
.end method

.method public static dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    .registers 9
    .parameter "name"
    .parameter "fd"
    .parameter "args"

    .prologue
    const/4 v4, 0x0

    const-string v5, "Debug"

    .line 1146
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1147
    .local v1, service:Landroid/os/IBinder;
    if-nez v1, :cond_23

    .line 1148
    const-string v2, "Debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find service to dump: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 1157
    :goto_22
    return v2

    .line 1153
    :cond_23
    :try_start_23
    invoke-interface {v1, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_26} :catch_28

    .line 1154
    const/4 v2, 0x1

    goto :goto_22

    .line 1155
    :catch_28
    move-exception v0

    .line 1156
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "Debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t dump service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v4

    .line 1157
    goto :goto_22
.end method

.method public static enableEmulatorTraceOutput()V
    .registers 0

    .prologue
    .line 379
    invoke-static {}, Ldalvik/system/VMDebug;->startEmulatorTracing()V

    .line 380
    return-void
.end method

.method private static fieldTypeMatches(Ljava/lang/reflect/Field;Ljava/lang/Class;)Z
    .registers 8
    .parameter "field"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 959
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 960
    .local v1, fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-ne v1, p1, :cond_a

    move v3, v5

    .line 976
    .end local p0
    :goto_9
    return v3

    .line 969
    .restart local p0
    :cond_a
    :try_start_a
    const-string v3, "TYPE"

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a .. :try_end_f} :catch_1b

    move-result-object v2

    .line 974
    .local v2, primitiveTypeField:Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    :try_start_11
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Class;
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_17} :catch_21

    if-ne v1, p0, :cond_1f

    move v3, v5

    goto :goto_9

    .line 970
    .end local v2           #primitiveTypeField:Ljava/lang/reflect/Field;
    .restart local p0
    :catch_1b
    move-exception v3

    move-object v0, v3

    .local v0, ex:Ljava/lang/NoSuchFieldException;
    move v3, v4

    .line 971
    goto :goto_9

    .end local v0           #ex:Ljava/lang/NoSuchFieldException;
    .end local p0
    .restart local v2       #primitiveTypeField:Ljava/lang/reflect/Field;
    :cond_1f
    move v3, v4

    .line 974
    goto :goto_9

    .line 975
    :catch_21
    move-exception v3

    move-object v0, v3

    .local v0, ex:Ljava/lang/IllegalAccessException;
    move v3, v4

    .line 976
    goto :goto_9
.end method

.method public static final native getBinderDeathObjectCount()I
.end method

.method public static final native getBinderLocalObjectCount()I
.end method

.method public static final native getBinderProxyObjectCount()I
.end method

.method public static native getBinderReceivedTransactions()I
.end method

.method public static native getBinderSentTransactions()I
.end method

.method public static getGlobalAllocCount()I
    .registers 1

    .prologue
    .line 536
    const/4 v0, 0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalAllocSize()I
    .registers 1

    .prologue
    .line 539
    const/4 v0, 0x2

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalClassInitCount()I
    .registers 1

    .prologue
    .line 549
    const/16 v0, 0x20

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalClassInitTime()I
    .registers 1

    .prologue
    .line 553
    const/16 v0, 0x40

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalExternalAllocCount()I
    .registers 1

    .prologue
    .line 556
    const/16 v0, 0x1000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalExternalAllocSize()I
    .registers 1

    .prologue
    .line 559
    const/16 v0, 0x2000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalExternalFreedCount()I
    .registers 1

    .prologue
    .line 562
    const/16 v0, 0x4000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalExternalFreedSize()I
    .registers 1

    .prologue
    .line 565
    const v0, 0x8000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalFreedCount()I
    .registers 1

    .prologue
    .line 542
    const/4 v0, 0x4

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalFreedSize()I
    .registers 1

    .prologue
    .line 545
    const/16 v0, 0x8

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalGcInvocationCount()I
    .registers 1

    .prologue
    .line 568
    const/16 v0, 0x10

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getLoadedClassCount()I
    .registers 1

    .prologue
    .line 730
    invoke-static {}, Ldalvik/system/VMDebug;->getLoadedClassCount()I

    move-result v0

    return v0
.end method

.method public static native getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)V
.end method

.method public static native getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V
.end method

.method public static native getNativeHeapAllocatedSize()J
.end method

.method public static native getNativeHeapFreeSize()J
.end method

.method public static native getNativeHeapSize()J
.end method

.method public static getThreadAllocCount()I
    .registers 1

    .prologue
    .line 571
    const/high16 v0, 0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getThreadAllocSize()I
    .registers 1

    .prologue
    .line 574
    const/high16 v0, 0x2

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getThreadExternalAllocCount()I
    .registers 1

    .prologue
    .line 577
    const/high16 v0, 0x1000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getThreadExternalAllocSize()I
    .registers 1

    .prologue
    .line 580
    const/high16 v0, 0x2000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getThreadGcInvocationCount()I
    .registers 1

    .prologue
    .line 583
    const/high16 v0, 0x10

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getVmFeatureList()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 277
    invoke-static {}, Ldalvik/system/VMDebug;->getVmFeatureList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDebuggerConnected()Z
    .registers 1

    .prologue
    .line 266
    invoke-static {}, Ldalvik/system/VMDebug;->isDebuggerConnected()Z

    move-result v0

    return v0
.end method

.method public static isMethodTracingActive()Z
    .registers 1

    .prologue
    .line 490
    invoke-static {}, Ldalvik/system/VMDebug;->isMethodTracingActive()Z

    move-result v0

    return v0
.end method

.method private static modifyFieldIfSet(Ljava/lang/reflect/Field;Lcom/android/internal/util/TypedProperties;Ljava/lang/String;)V
    .registers 13
    .parameter "field"
    .parameter "properties"
    .parameter "propertyName"

    .prologue
    const-string v9, "Type of "

    const-string v8, "Cannot set field for "

    const-string v7, ")"

    const-string v6, " does not match field type ("

    .line 987
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_8d

    .line 988
    invoke-virtual {p1, p2}, Lcom/android/internal/util/TypedProperties;->getStringInfo(Ljava/lang/String;)I

    move-result v1

    .line 989
    .local v1, stringInfo:I
    packed-switch v1, :pswitch_data_fe

    .line 1008
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected getStringInfo("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") return value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 995
    :pswitch_3a
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_3c
    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3f
    .catch Ljava/lang/IllegalAccessException; {:try_start_3c .. :try_end_3f} :catch_40

    .line 1027
    .end local v1           #stringInfo:I
    :cond_3f
    :goto_3f
    :pswitch_3f
    return-void

    .line 996
    .restart local v1       #stringInfo:I
    :catch_40
    move-exception v0

    .line 997
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot set field for "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1004
    .end local v0           #ex:Ljava/lang/IllegalAccessException;
    :pswitch_5a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Type of "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not match field type ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1013
    .end local v1           #stringInfo:I
    :cond_8d
    :pswitch_8d
    invoke-virtual {p1, p2}, Lcom/android/internal/util/TypedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1014
    .local v2, value:Ljava/lang/Object;
    if-eqz v2, :cond_3f

    .line 1015
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/os/Debug;->fieldTypeMatches(Ljava/lang/reflect/Field;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_de

    .line 1016
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Type of "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not match field type ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1021
    :cond_de
    const/4 v3, 0x0

    :try_start_df
    invoke-virtual {p0, v3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e2
    .catch Ljava/lang/IllegalAccessException; {:try_start_df .. :try_end_e2} :catch_e4

    goto/16 :goto_3f

    .line 1022
    :catch_e4
    move-exception v0

    .line 1023
    .restart local v0       #ex:Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot set field for "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 989
    :pswitch_data_fe
    .packed-switch -0x2
        :pswitch_5a
        :pswitch_3f
        :pswitch_3a
        :pswitch_8d
    .end packed-switch
.end method

.method public static printLoadedClasses(I)V
    .registers 1
    .parameter "flags"

    .prologue
    .line 722
    invoke-static {p0}, Ldalvik/system/VMDebug;->printLoadedClasses(I)V

    .line 723
    return-void
.end method

.method public static resetAllCounts()V
    .registers 1

    .prologue
    .line 635
    const/4 v0, -0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 636
    return-void
.end method

.method public static resetGlobalAllocCount()V
    .registers 1

    .prologue
    .line 587
    const/4 v0, 0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 588
    return-void
.end method

.method public static resetGlobalAllocSize()V
    .registers 1

    .prologue
    .line 590
    const/4 v0, 0x2

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 591
    return-void
.end method

.method public static resetGlobalClassInitCount()V
    .registers 1

    .prologue
    .line 599
    const/16 v0, 0x20

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 600
    return-void
.end method

.method public static resetGlobalClassInitTime()V
    .registers 1

    .prologue
    .line 602
    const/16 v0, 0x40

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 603
    return-void
.end method

.method public static resetGlobalExternalAllocCount()V
    .registers 1

    .prologue
    .line 605
    const/16 v0, 0x1000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 606
    return-void
.end method

.method public static resetGlobalExternalAllocSize()V
    .registers 1

    .prologue
    .line 608
    const/16 v0, 0x2000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 609
    return-void
.end method

.method public static resetGlobalExternalFreedCount()V
    .registers 1

    .prologue
    .line 611
    const/16 v0, 0x4000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 612
    return-void
.end method

.method public static resetGlobalExternalFreedSize()V
    .registers 1

    .prologue
    .line 614
    const v0, 0x8000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 615
    return-void
.end method

.method public static resetGlobalFreedCount()V
    .registers 1

    .prologue
    .line 593
    const/4 v0, 0x4

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 594
    return-void
.end method

.method public static resetGlobalFreedSize()V
    .registers 1

    .prologue
    .line 596
    const/16 v0, 0x8

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 597
    return-void
.end method

.method public static resetGlobalGcInvocationCount()V
    .registers 1

    .prologue
    .line 617
    const/16 v0, 0x10

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 618
    return-void
.end method

.method public static resetThreadAllocCount()V
    .registers 1

    .prologue
    .line 620
    const/high16 v0, 0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 621
    return-void
.end method

.method public static resetThreadAllocSize()V
    .registers 1

    .prologue
    .line 623
    const/high16 v0, 0x2

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 624
    return-void
.end method

.method public static resetThreadExternalAllocCount()V
    .registers 1

    .prologue
    .line 626
    const/high16 v0, 0x1000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 627
    return-void
.end method

.method public static resetThreadExternalAllocSize()V
    .registers 1

    .prologue
    .line 629
    const/high16 v0, 0x2000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 630
    return-void
.end method

.method public static resetThreadGcInvocationCount()V
    .registers 1

    .prologue
    .line 632
    const/high16 v0, 0x10

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 633
    return-void
.end method

.method public static setAllocationLimit(I)I
    .registers 2
    .parameter "limit"

    .prologue
    .line 698
    invoke-static {p0}, Ldalvik/system/VMDebug;->setAllocationLimit(I)I

    move-result v0

    return v0
.end method

.method public static setFieldsOn(Ljava/lang/Class;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1038
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/Debug;->setFieldsOn(Ljava/lang/Class;Z)V

    .line 1039
    return-void
.end method

.method public static setFieldsOn(Ljava/lang/Class;Z)V
    .registers 5
    .parameter
    .parameter "partial"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 1117
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v0, "Debug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFieldsOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p0, :cond_23

    const-string v2, "null"

    :goto_11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") called in non-DEBUG build"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    return-void

    .line 1117
    :cond_23
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_11
.end method

.method public static setGlobalAllocationLimit(I)I
    .registers 3
    .parameter "limit"

    .prologue
    .line 711
    if-eqz p0, :cond_d

    const/4 v0, -0x1

    if-eq p0, v0, :cond_d

    .line 712
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "limit must be 0 or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :cond_d
    invoke-static {p0}, Ldalvik/system/VMDebug;->setGlobalAllocationLimit(I)I

    move-result v0

    return v0
.end method

.method public static startAllocCounting()V
    .registers 0

    .prologue
    .line 529
    invoke-static {}, Ldalvik/system/VMDebug;->startAllocCounting()V

    .line 530
    return-void
.end method

.method public static startMethodTracing()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 389
    sget-object v0, Landroid/os/Debug;->DEFAULT_TRACE_FILE_PATH:Ljava/lang/String;

    invoke-static {v0, v1, v1}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;II)V

    .line 390
    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;)V
    .registers 2
    .parameter "traceName"

    .prologue
    const/4 v0, 0x0

    .line 405
    invoke-static {p0, v0, v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;II)V

    .line 406
    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;I)V
    .registers 3
    .parameter "traceName"
    .parameter "bufferSize"

    .prologue
    .line 422
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;II)V

    .line 423
    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;II)V
    .registers 7
    .parameter "traceName"
    .parameter "bufferSize"
    .parameter "flags"

    .prologue
    const-string v3, ".trace"

    .line 451
    move-object v0, p0

    .line 452
    .local v0, pathName:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1f

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Debug;->DEFAULT_TRACE_PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 454
    :cond_1f
    const-string v1, ".trace"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".trace"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    :cond_3a
    invoke-static {v0, p1, p2}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;II)V

    .line 458
    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;II)V
    .registers 4
    .parameter "traceName"
    .parameter "fd"
    .parameter "bufferSize"
    .parameter "flags"

    .prologue
    .line 471
    invoke-static {p0, p1, p2, p3}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;II)V

    .line 472
    return-void
.end method

.method public static startMethodTracingDdms(II)V
    .registers 2
    .parameter "bufferSize"
    .parameter "flags"

    .prologue
    .line 482
    invoke-static {p0, p1}, Ldalvik/system/VMDebug;->startMethodTracingDdms(II)V

    .line 483
    return-void
.end method

.method public static startNativeTracing()V
    .registers 4

    .prologue
    .line 324
    const/4 v1, 0x0

    .line 326
    .local v1, outStream:Ljava/io/PrintWriter;
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v3, "/sys/qemu_trace/state"

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 327
    .local v0, fos:Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_21

    .line 328
    .end local v1           #outStream:Ljava/io/PrintWriter;
    .local v2, outStream:Ljava/io/PrintWriter;
    :try_start_12
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_2f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_32

    .line 331
    if-eqz v2, :cond_35

    .line 332
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    move-object v1, v2

    .line 335
    .end local v0           #fos:Ljava/io/FileOutputStream;
    .end local v2           #outStream:Ljava/io/PrintWriter;
    .restart local v1       #outStream:Ljava/io/PrintWriter;
    :cond_1d
    :goto_1d
    invoke-static {}, Ldalvik/system/VMDebug;->startEmulatorTracing()V

    .line 336
    return-void

    .line 329
    :catch_21
    move-exception v3

    .line 331
    :goto_22
    if-eqz v1, :cond_1d

    .line 332
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_1d

    .line 331
    :catchall_28
    move-exception v3

    :goto_29
    if-eqz v1, :cond_2e

    .line 332
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_2e
    throw v3

    .line 331
    .end local v1           #outStream:Ljava/io/PrintWriter;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    .restart local v2       #outStream:Ljava/io/PrintWriter;
    :catchall_2f
    move-exception v3

    move-object v1, v2

    .end local v2           #outStream:Ljava/io/PrintWriter;
    .restart local v1       #outStream:Ljava/io/PrintWriter;
    goto :goto_29

    .line 329
    .end local v1           #outStream:Ljava/io/PrintWriter;
    .restart local v2       #outStream:Ljava/io/PrintWriter;
    :catch_32
    move-exception v3

    move-object v1, v2

    .end local v2           #outStream:Ljava/io/PrintWriter;
    .restart local v1       #outStream:Ljava/io/PrintWriter;
    goto :goto_22

    .end local v1           #outStream:Ljava/io/PrintWriter;
    .restart local v2       #outStream:Ljava/io/PrintWriter;
    :cond_35
    move-object v1, v2

    .end local v2           #outStream:Ljava/io/PrintWriter;
    .restart local v1       #outStream:Ljava/io/PrintWriter;
    goto :goto_1d
.end method

.method public static stopAllocCounting()V
    .registers 0

    .prologue
    .line 532
    invoke-static {}, Ldalvik/system/VMDebug;->stopAllocCounting()V

    .line 533
    return-void
.end method

.method public static stopMethodTracing()V
    .registers 0

    .prologue
    .line 497
    invoke-static {}, Ldalvik/system/VMDebug;->stopMethodTracing()V

    .line 498
    return-void
.end method

.method public static stopNativeTracing()V
    .registers 4

    .prologue
    .line 349
    invoke-static {}, Ldalvik/system/VMDebug;->stopEmulatorTracing()V

    .line 352
    const/4 v1, 0x0

    .line 354
    .local v1, outStream:Ljava/io/PrintWriter;
    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v3, "/sys/qemu_trace/state"

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 355
    .local v0, fos:Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_28
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_21

    .line 356
    .end local v1           #outStream:Ljava/io/PrintWriter;
    .local v2, outStream:Ljava/io/PrintWriter;
    :try_start_15
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_2f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_32

    .line 361
    if-eqz v2, :cond_35

    .line 362
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    move-object v1, v2

    .line 364
    .end local v0           #fos:Ljava/io/FileOutputStream;
    .end local v2           #outStream:Ljava/io/PrintWriter;
    .restart local v1       #outStream:Ljava/io/PrintWriter;
    :cond_20
    :goto_20
    return-void

    .line 357
    :catch_21
    move-exception v3

    .line 361
    :goto_22
    if-eqz v1, :cond_20

    .line 362
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_20

    .line 361
    :catchall_28
    move-exception v3

    :goto_29
    if-eqz v1, :cond_2e

    .line 362
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_2e
    throw v3

    .line 361
    .end local v1           #outStream:Ljava/io/PrintWriter;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    .restart local v2       #outStream:Ljava/io/PrintWriter;
    :catchall_2f
    move-exception v3

    move-object v1, v2

    .end local v2           #outStream:Ljava/io/PrintWriter;
    .restart local v1       #outStream:Ljava/io/PrintWriter;
    goto :goto_29

    .line 357
    .end local v1           #outStream:Ljava/io/PrintWriter;
    .restart local v2       #outStream:Ljava/io/PrintWriter;
    :catch_32
    move-exception v3

    move-object v1, v2

    .end local v2           #outStream:Ljava/io/PrintWriter;
    .restart local v1       #outStream:Ljava/io/PrintWriter;
    goto :goto_22

    .end local v1           #outStream:Ljava/io/PrintWriter;
    .restart local v2       #outStream:Ljava/io/PrintWriter;
    :cond_35
    move-object v1, v2

    .end local v2           #outStream:Ljava/io/PrintWriter;
    .restart local v1       #outStream:Ljava/io/PrintWriter;
    goto :goto_20
.end method

.method public static threadCpuTimeNanos()J
    .registers 2

    .prologue
    .line 512
    invoke-static {}, Ldalvik/system/VMDebug;->threadCpuTimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public static waitForDebugger()V
    .registers 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 205
    invoke-static {}, Ldalvik/system/VMDebug;->isDebuggingEnabled()Z

    move-result v4

    if-nez v4, :cond_9

    .line 252
    :cond_8
    :goto_8
    return-void

    .line 209
    :cond_9
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v4

    if-nez v4, :cond_8

    .line 213
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Sending WAIT chunk"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 214
    new-array v0, v7, [B

    aput-byte v6, v0, v6

    .line 215
    .local v0, data:[B
    new-instance v3, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    const-string v4, "WAIT"

    invoke-static {v4}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4, v0, v6, v7}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .line 216
    .local v3, waitChunk:Lorg/apache/harmony/dalvik/ddmc/Chunk;
    invoke-static {v3}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->sendChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)V

    .line 218
    sput-boolean v7, Landroid/os/Debug;->mWaiting:Z

    .line 219
    :goto_2a
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v4

    if-nez v4, :cond_38

    .line 220
    const-wide/16 v4, 0xc8

    :try_start_32
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_2a

    .line 221
    :catch_36
    move-exception v4

    goto :goto_2a

    .line 223
    :cond_38
    sput-boolean v6, Landroid/os/Debug;->mWaiting:Z

    .line 225
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Debugger has connected"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 237
    :goto_41
    invoke-static {}, Ldalvik/system/VMDebug;->lastDebuggerActivity()J

    move-result-wide v1

    .line 238
    .local v1, delta:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gez v4, :cond_53

    .line 239
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "debugger detached?"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 243
    :cond_53
    const-wide/16 v4, 0x514

    cmp-long v4, v1, v4

    if-gez v4, :cond_68

    .line 244
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "waiting for debugger to settle..."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 245
    const-wide/16 v4, 0xc8

    :try_start_62
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_65
    .catch Ljava/lang/InterruptedException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_41

    .line 246
    :catch_66
    move-exception v4

    goto :goto_41

    .line 248
    :cond_68
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "debugger has settled ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static waitingForDebugger()Z
    .registers 1

    .prologue
    .line 259
    sget-boolean v0, Landroid/os/Debug;->mWaiting:Z

    return v0
.end method
