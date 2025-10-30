.class final enum Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl$2;
.super Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;
.source "ConfigurationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl$1;)V

    return-void
.end method


# virtual methods
.method validate(Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;)V
    .registers 5

    .line 25
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->validate(Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;)V

    .line 26
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->getEditActivityClassName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_d

    move p0, v0

    goto :goto_e

    :cond_d
    move p0, v1

    :goto_e
    const-string v2, "Edit activity must not be null"

    # invokes: Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->checkArgument(ZLjava/lang/String;)V
    invoke-static {p0, v2}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->access$100(ZLjava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->getInteractActivityClassName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1b

    move p0, v0

    goto :goto_1c

    :cond_1b
    move p0, v1

    :goto_1c
    const-string v2, "Interact activity must be null"

    # invokes: Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->checkArgument(ZLjava/lang/String;)V
    invoke-static {p0, v2}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->access$100(ZLjava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->getLaunchActivityClassName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_28

    goto :goto_29

    :cond_28
    move v0, v1

    :goto_29
    const-string p0, "Launch activity must be null"

    # invokes: Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->checkArgument(ZLjava/lang/String;)V
    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->access$100(ZLjava/lang/String;)V

    return-void
.end method
