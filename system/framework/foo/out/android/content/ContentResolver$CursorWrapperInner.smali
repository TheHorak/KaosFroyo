.class final Landroid/content/ContentResolver$CursorWrapperInner;
.super Landroid/database/CursorWrapper;
.source "ContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CursorWrapperInner"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CursorWrapperInner"


# instance fields
.field private mCloseFlag:Z

.field private mContentProvider:Landroid/content/IContentProvider;

.field final synthetic this$0:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/database/Cursor;Landroid/content/IContentProvider;)V
    .registers 5
    .parameter
    .parameter "cursor"
    .parameter "icp"

    .prologue
    .line 1353
    iput-object p1, p0, Landroid/content/ContentResolver$CursorWrapperInner;->this$0:Landroid/content/ContentResolver;

    .line 1354
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 1351
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mCloseFlag:Z

    .line 1355
    iput-object p3, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mContentProvider:Landroid/content/IContentProvider;

    .line 1356
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 1360
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 1361
    iget-object v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->this$0:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1362
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mCloseFlag:Z

    .line 1363
    return-void
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1368
    :try_start_0
    iget-boolean v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mCloseFlag:Z

    if-nez v0, :cond_b

    .line 1369
    iget-object v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->this$0:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_f

    .line 1372
    :cond_b
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1374
    return-void

    .line 1372
    :catchall_f
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
