.class public Lcom/sonyericsson/android/camera/CameraImageActivity;
.super Landroid/app/Activity;
.source "CameraImageActivity.java"


# static fields
.field private static final FINISH_DELAY_MILLIS:J = 0xc8L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "keyguard"

    .line 33
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/CameraImageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_17

    .line 34
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_17

    move v2, v0

    goto :goto_18

    :cond_17
    move v2, v1

    :goto_18
    if-eqz p1, :cond_22

    .line 35
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p1

    if-eqz p1, :cond_22

    move p1, v0

    goto :goto_23

    :cond_22
    move p1, v1

    :goto_23
    if-nez v2, :cond_2b

    const v3, 0x7f0b001c

    .line 39
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/CameraImageActivity;->setContentView(I)V

    .line 42
    :cond_2b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.category.VOICE"

    .line 44
    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    const/high16 v5, 0x10000000

    if-eqz v4, :cond_77

    .line 45
    const-class v4, Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 46
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x800000

    and-int/2addr v5, v4

    if-eqz v5, :cond_51

    const v5, -0x800001

    and-int/2addr v4, v5

    .line 52
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 55
    :cond_51
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraImageActivity;->isVoiceInteraction()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 57
    new-instance v4, Landroid/app/VoiceInteractor$CompleteVoiceRequest;

    const/4 v5, 0x0

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v4, v5, v6}, Landroid/app/VoiceInteractor$CompleteVoiceRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraImageActivity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    goto :goto_6b

    :cond_6a
    move v0, v1

    .line 64
    :goto_6b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraImageActivity;->isVoiceInteractionRoot()Z

    move-result v4

    if-eqz v4, :cond_80

    .line 65
    const-class v4, Lcom/sonyericsson/android/camera/InternalCameraActivity;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_80

    .line 68
    :cond_77
    const-class v0, Lcom/sonyericsson/android/camera/CameraGestureTriggerActivity;

    invoke-virtual {v3, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 70
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move v0, v1

    :cond_80
    :goto_80
    if-eqz p1, :cond_90

    if-eqz v2, :cond_90

    const-string p1, "com.sonyericsson.android.camera.extra.LOCK_MODE"

    .line 74
    sget-object v2, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->SECURE:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    .line 75
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->ordinal()I

    move-result v2

    .line 74
    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_a9

    :cond_90
    if-eqz v2, :cond_9e

    const-string p1, "com.sonyericsson.android.camera.extra.LOCK_MODE"

    .line 77
    sget-object v2, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->SWIPE:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    .line 78
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->ordinal()I

    move-result v2

    .line 77
    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_a9

    :cond_9e
    const-string p1, "com.sonyericsson.android.camera.extra.LOCK_MODE"

    .line 80
    sget-object v2, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->NONE_OR_DISMISSED:Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;

    .line 81
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchCondition$LockMode;->ordinal()I

    move-result v2

    .line 80
    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_a9
    const-string p1, "is_voice_interaction_root"

    .line 85
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraImageActivity;->isVoiceInteractionRoot()Z

    move-result v2

    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/CameraImageActivity;->startActivity(Landroid/content/Intent;)V

    .line 88
    invoke-virtual {p0, v1, v1}, Lcom/sonyericsson/android/camera/CameraImageActivity;->overridePendingTransition(II)V

    if-eqz v0, :cond_bd

    .line 91
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraImageActivity;->finish()V

    :cond_bd
    return-void
.end method

.method protected onResume()V
    .registers 5

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sonyericsson/android/camera/CameraImageActivity$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraImageActivity$1;-><init>(Lcom/sonyericsson/android/camera/CameraImageActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
