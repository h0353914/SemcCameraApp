.class final enum Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl$1;
.super Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;
.source "ConfigurationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl$1;)V

    return-void
.end method


# virtual methods
.method validate(Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;)V
    .registers 6

    .line 13
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->validate(Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;)V

    .line 14
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->getEditActivityClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    const-string v3, "Edit activity must be null"

    # invokes: Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->checkArgument(ZLjava/lang/String;)V
    invoke-static {v0, v3}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->access$100(ZLjava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->getInteractActivityClassName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    move v0, v1

    goto :goto_1c

    :cond_1b
    move v0, v2

    :goto_1c
    const-string v3, "Interact activity must be null"

    # invokes: Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->checkArgument(ZLjava/lang/String;)V
    invoke-static {v0, v3}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->access$100(ZLjava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->getLaunchActivityClassName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_28

    goto :goto_29

    :cond_28
    move v1, v2

    :goto_29
    const-string p1, "Launch activity must be null"

    # invokes: Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->checkArgument(ZLjava/lang/String;)V
    invoke-static {v1, p1}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->access$100(ZLjava/lang/String;)V

    return-void
.end method
