.class public Lcom/sonyericsson/cameracommon/status/eachcamera/TimeShift;
.super Lcom/sonyericsson/cameracommon/status/EnumValue;
.source "TimeShift.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/status/eachcamera/TimeShift$Value;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/cameracommon/status/EnumValue<",
        "Lcom/sonyericsson/cameracommon/status/eachcamera/TimeShift$Value;",
        ">;",
        "Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;"
    }
.end annotation


# static fields
.field public static final DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/TimeShift$Value;

.field public static final KEY:Ljava/lang/String; = "time_shift"

.field private static final REQUIRED_VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/TimeShift$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/TimeShift$Value;

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/TimeShift;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/TimeShift$Value;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/status/eachcamera/TimeShift$Value;)V
    .registers 2

    .line 51
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/EnumValue;-><init>(Ljava/lang/Enum;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 1

    const-string p0, "time_shift"

    return-object p0
.end method

.method public minRequiredVersion()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
