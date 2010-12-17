.class Landroid/webkit/WebView$6;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView;->savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;

.field final synthetic val$dest:Ljava/io/File;

.field final synthetic val$p:Landroid/graphics/Picture;

.field final synthetic val$temp:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Ljava/io/File;Landroid/graphics/Picture;Ljava/io/File;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1413
    iput-object p1, p0, Landroid/webkit/WebView$6;->this$0:Landroid/webkit/WebView;

    iput-object p2, p0, Landroid/webkit/WebView$6;->val$temp:Ljava/io/File;

    iput-object p3, p0, Landroid/webkit/WebView$6;->val$p:Landroid/graphics/Picture;

    iput-object p4, p0, Landroid/webkit/WebView$6;->val$dest:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1416
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Landroid/webkit/WebView$6;->val$temp:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1417
    .local v0, out:Ljava/io/FileOutputStream;
    iget-object v1, p0, Landroid/webkit/WebView$6;->val$p:Landroid/graphics/Picture;

    invoke-virtual {v1, v0}, Landroid/graphics/Picture;->writeToStream(Ljava/io/OutputStream;)V

    .line 1418
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1421
    iget-object v1, p0, Landroid/webkit/WebView$6;->val$temp:Ljava/io/File;

    iget-object v2, p0, Landroid/webkit/WebView$6;->val$dest:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_23

    .line 1425
    iget-object v1, p0, Landroid/webkit/WebView$6;->val$temp:Ljava/io/File;

    .end local v0           #out:Ljava/io/FileOutputStream;
    :goto_18
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1427
    return-void

    .line 1425
    :catchall_1c
    move-exception v1

    iget-object v2, p0, Landroid/webkit/WebView$6;->val$temp:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v1

    .line 1422
    :catch_23
    move-exception v1

    .line 1425
    iget-object v1, p0, Landroid/webkit/WebView$6;->val$temp:Ljava/io/File;

    goto :goto_18
.end method
