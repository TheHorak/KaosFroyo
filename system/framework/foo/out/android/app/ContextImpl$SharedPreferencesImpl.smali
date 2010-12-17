.class final Landroid/app/ContextImpl$SharedPreferencesImpl;
.super Ljava/lang/Object;
.source "ContextImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SharedPreferencesImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;
    }
.end annotation


# static fields
.field private static final mContent:Ljava/lang/Object;


# instance fields
.field private final mBackupFile:Ljava/io/File;

.field private final mFile:Ljava/io/File;

.field private final mFileStatus:Landroid/os/FileUtils$FileStatus;

.field private mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMap:Ljava/util/Map;

.field private final mMode:I

.field private mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2647
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mContent:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/io/File;ILjava/util/Map;)V
    .registers 6
    .parameter "file"
    .parameter "mode"
    .parameter "initialContents"

    .prologue
    .line 2651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2644
    new-instance v0, Landroid/os/FileUtils$FileStatus;

    invoke-direct {v0}, Landroid/os/FileUtils$FileStatus;-><init>()V

    iput-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFileStatus:Landroid/os/FileUtils$FileStatus;

    .line 2652
    iput-object p1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    .line 2653
    invoke-static {p1}, Landroid/app/ContextImpl;->access$000(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    .line 2654
    iput p2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMode:I

    .line 2655
    if-eqz p3, :cond_33

    move-object v0, p3

    :goto_17
    iput-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    .line 2656
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFileStatus:Landroid/os/FileUtils$FileStatus;

    invoke-static {v0, v1}, Landroid/os/FileUtils;->getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2657
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFileStatus:Landroid/os/FileUtils$FileStatus;

    iget-wide v0, v0, Landroid/os/FileUtils$FileStatus;->mtime:J

    iput-wide v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mTimestamp:J

    .line 2659
    :cond_2b
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    .line 2660
    return-void

    .line 2655
    :cond_33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_17
.end method

.method static synthetic access$100(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/WeakHashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2638
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$200(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2638
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/ContextImpl$SharedPreferencesImpl;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 2638
    invoke-direct {p0}, Landroid/app/ContextImpl$SharedPreferencesImpl;->writeFileLocked()Z

    move-result v0

    return v0
.end method

.method private createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .registers 11
    .parameter "file"

    .prologue
    const/4 v7, -0x1

    const-string v8, "ApplicationContext"

    .line 2846
    const/4 v3, 0x0

    .line 2848
    .local v3, str:Ljava/io/FileOutputStream;
    :try_start_4
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_9} :catch_c

    .end local v3           #str:Ljava/io/FileOutputStream;
    .local v4, str:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #str:Ljava/io/FileOutputStream;
    .restart local v3       #str:Ljava/io/FileOutputStream;
    :goto_a
    move-object v5, v3

    .line 2865
    :goto_b
    return-object v5

    .line 2849
    :catch_c
    move-exception v5

    move-object v0, v5

    .line 2850
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 2851
    .local v2, parent:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-nez v5, :cond_32

    .line 2852
    const-string v5, "ApplicationContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t create directory for SharedPreferences file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    const/4 v5, 0x0

    goto :goto_b

    .line 2855
    :cond_32
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f9

    invoke-static {v5, v6, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2860
    :try_start_3b
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_40
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_40} :catch_42

    .end local v3           #str:Ljava/io/FileOutputStream;
    .restart local v4       #str:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 2863
    .end local v4           #str:Ljava/io/FileOutputStream;
    .restart local v3       #str:Ljava/io/FileOutputStream;
    goto :goto_a

    .line 2861
    :catch_42
    move-exception v5

    move-object v1, v5

    .line 2862
    .local v1, e2:Ljava/io/FileNotFoundException;
    const-string v5, "ApplicationContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t create SharedPreferences file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method private writeFileLocked()Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    const-string v7, "writeFileLocked: Got exception:"

    const-string v6, "ApplicationContext"

    .line 2870
    iget-object v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 2871
    iget-object v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_47

    .line 2872
    iget-object v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 2873
    const-string v2, "ApplicationContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t rename file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to backup file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 2911
    :goto_46
    return v2

    .line 2878
    :cond_47
    iget-object v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2886
    :cond_4c
    :try_start_4c
    iget-object v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-direct {p0, v2}, Landroid/app/ContextImpl$SharedPreferencesImpl;->createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 2887
    .local v1, str:Ljava/io/FileOutputStream;
    if-nez v1, :cond_56

    move v2, v5

    .line 2888
    goto :goto_46

    .line 2890
    :cond_56
    iget-object v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-static {v2, v1}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 2891
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 2892
    iget-object v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMode:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/app/ContextImpl;->access$400(Ljava/lang/String;II)V

    .line 2893
    iget-object v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFileStatus:Landroid/os/FileUtils$FileStatus;

    invoke-static {v2, v3}, Landroid/os/FileUtils;->getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 2894
    iget-object v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFileStatus:Landroid/os/FileUtils$FileStatus;

    iget-wide v2, v2, Landroid/os/FileUtils$FileStatus;->mtime:J

    iput-wide v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mTimestamp:J

    .line 2898
    :cond_7e
    iget-object v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_83
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4c .. :try_end_83} :catch_85
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_83} :catch_ba

    .line 2899
    const/4 v2, 0x1

    goto :goto_46

    .line 2900
    .end local v1           #str:Ljava/io/FileOutputStream;
    :catch_85
    move-exception v2

    move-object v0, v2

    .line 2901
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "ApplicationContext"

    const-string v2, "writeFileLocked: Got exception:"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2906
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_8e
    iget-object v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 2907
    iget-object v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_b8

    .line 2908
    const-string v2, "ApplicationContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t clean up partially-written file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b8
    move v2, v5

    .line 2911
    goto :goto_46

    .line 2902
    :catch_ba
    move-exception v2

    move-object v0, v2

    .line 2903
    .local v0, e:Ljava/io/IOException;
    const-string v2, "ApplicationContext"

    const-string v2, "writeFileLocked: Got exception:"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8e
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 2731
    monitor-enter p0

    .line 2732
    :try_start_1
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 2733
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .prologue
    .line 2842
    new-instance v0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;

    invoke-direct {v0, p0}, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;-><init>(Landroid/app/ContextImpl$SharedPreferencesImpl;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 2692
    monitor-enter p0

    .line 2694
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit p0

    return-object v0

    .line 2695
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 5
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 2724
    monitor-enter p0

    .line 2725
    :try_start_1
    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2726
    .local v0, v:Ljava/lang/Boolean;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_f
    monitor-exit p0

    return v1

    :cond_11
    move v1, p2

    goto :goto_f

    .line 2727
    .end local v0           #v:Ljava/lang/Boolean;
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 5
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 2718
    monitor-enter p0

    .line 2719
    :try_start_1
    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 2720
    .local v0, v:Ljava/lang/Float;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_f
    monitor-exit p0

    return v1

    :cond_11
    move v1, p2

    goto :goto_f

    .line 2721
    .end local v0           #v:Ljava/lang/Float;
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 5
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 2706
    monitor-enter p0

    .line 2707
    :try_start_1
    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2708
    .local v0, v:Ljava/lang/Integer;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_f
    monitor-exit p0

    return v1

    :cond_11
    move v1, p2

    goto :goto_f

    .line 2709
    .end local v0           #v:Ljava/lang/Integer;
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 7
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 2712
    monitor-enter p0

    .line 2713
    :try_start_1
    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2714
    .local v0, v:Ljava/lang/Long;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_f
    monitor-exit p0

    return-wide v1

    :cond_11
    move-wide v1, p2

    goto :goto_f

    .line 2715
    .end local v0           #v:Ljava/lang/Long;
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 2699
    monitor-enter p0

    .line 2700
    :try_start_1
    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2701
    .local v0, v:Ljava/lang/String;
    if-eqz v0, :cond_e

    move-object v1, v0

    :goto_c
    monitor-exit p0

    return-object v1

    :cond_e
    move-object v1, p2

    goto :goto_c

    .line 2702
    .end local v0           #v:Ljava/lang/String;
    :catchall_10
    move-exception v1

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public hasFileChanged()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 2663
    monitor-enter p0

    .line 2664
    :try_start_2
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFileStatus:Landroid/os/FileUtils$FileStatus;

    invoke-static {v0, v1}, Landroid/os/FileUtils;->getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2665
    monitor-exit p0

    move v0, v4

    .line 2667
    :goto_12
    return v0

    :cond_13
    iget-wide v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mTimestamp:J

    iget-object v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFileStatus:Landroid/os/FileUtils$FileStatus;

    iget-wide v2, v2, Landroid/os/FileUtils$FileStatus;->mtime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_23

    move v0, v4

    :goto_1e
    monitor-exit p0

    goto :goto_12

    .line 2668
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_20

    throw v0

    .line 2667
    :cond_23
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 2680
    monitor-enter p0

    .line 2681
    :try_start_1
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    sget-object v1, Landroid/app/ContextImpl$SharedPreferencesImpl;->mContent:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2682
    monitor-exit p0

    .line 2683
    return-void

    .line 2682
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public replace(Ljava/util/Map;)V
    .registers 3
    .parameter "newContents"

    .prologue
    .line 2672
    if-eqz p1, :cond_6

    .line 2673
    monitor-enter p0

    .line 2674
    :try_start_3
    iput-object p1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    .line 2675
    monitor-exit p0

    .line 2677
    :cond_6
    return-void

    .line 2675
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 2686
    monitor-enter p0

    .line 2687
    :try_start_1
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2688
    monitor-exit p0

    .line 2689
    return-void

    .line 2688
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method
