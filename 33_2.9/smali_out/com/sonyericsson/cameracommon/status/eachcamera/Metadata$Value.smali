.class public final enum Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;
.super Ljava/lang/Enum;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;

.field public static final enum OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;

.field public static final enum ON:Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;


# instance fields
.field private final mStringExpression:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 28
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;

    const-string v1, "ON"

    const/4 v2, 0x0

    const-string v3, "on"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;

    .line 29
    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;

    const-string v3, "OFF"

    const/4 v4, 0x1

    const-string v5, "off"

    invoke-direct {v1, v3, v4, v5}, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 27
    sput-object v3, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;->$VALUES:[Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;->mStringExpression:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;
    .registers 2

    .line 27
    const-class v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;
    .registers 1

    .line 27
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;->$VALUES:[Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;->mStringExpression:Ljava/lang/String;

    return-object p0
.end method
