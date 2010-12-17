.class Landroid/view/WindowOrientationListener$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/WindowOrientationListener;


# direct methods
.method constructor <init>(Landroid/view/WindowOrientationListener;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "handler"

    .prologue
    .line 132
    iput-object p1, p0, Landroid/view/WindowOrientationListener$SettingsObserver;->this$0:Landroid/view/WindowOrientationListener;

    .line 133
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 134
    return-void
.end method


# virtual methods
.method observe()V
    .registers 4

    .prologue
    .line 137
    iget-object v1, p0, Landroid/view/WindowOrientationListener$SettingsObserver;->this$0:Landroid/view/WindowOrientationListener;

    invoke-static {v1}, Landroid/view/WindowOrientationListener;->access$000(Landroid/view/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 138
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "accelerometer_rotation_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 141
    invoke-virtual {p0}, Landroid/view/WindowOrientationListener$SettingsObserver;->update()V

    .line 142
    return-void
.end method

.method public onChange(Z)V
    .registers 2
    .parameter "selfChange"

    .prologue
    .line 152
    invoke-virtual {p0}, Landroid/view/WindowOrientationListener$SettingsObserver;->update()V

    .line 153
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 145
    iget-object v1, p0, Landroid/view/WindowOrientationListener$SettingsObserver;->this$0:Landroid/view/WindowOrientationListener;

    invoke-static {v1}, Landroid/view/WindowOrientationListener;->access$000(Landroid/view/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 146
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 148
    return-void
.end method

.method public update()V
    .registers 5

    .prologue
    .line 156
    iget-object v1, p0, Landroid/view/WindowOrientationListener$SettingsObserver;->this$0:Landroid/view/WindowOrientationListener;

    invoke-static {v1}, Landroid/view/WindowOrientationListener;->access$000(Landroid/view/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 157
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Landroid/view/WindowOrientationListener$SettingsObserver;->this$0:Landroid/view/WindowOrientationListener;

    const-string v2, "accelerometer_rotation_mode"

    const/4 v3, 0x5

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/WindowOrientationListener;->access$102(Landroid/view/WindowOrientationListener;I)I

    .line 160
    return-void
.end method
