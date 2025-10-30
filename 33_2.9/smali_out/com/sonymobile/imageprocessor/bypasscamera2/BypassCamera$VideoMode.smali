.class public final enum Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;
.super Ljava/lang/Enum;
.source "BypassCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

.field public static final enum HDR:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

.field public static final enum HDR_STEADYSHOT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

.field public static final enum INTELLIGENTACTIVE:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

.field public static final enum NORMAL:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

.field public static final enum STEADYSHOT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;


# instance fields
.field private final mModeCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 50
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->NORMAL:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    .line 51
    new-instance v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    const-string v3, "STEADYSHOT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->STEADYSHOT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    .line 52
    new-instance v3, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    const-string v5, "INTELLIGENTACTIVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->INTELLIGENTACTIVE:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    .line 53
    new-instance v5, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    const-string v7, "HDR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->HDR:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    .line 54
    new-instance v7, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    const-string v9, "HDR_STEADYSHOT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->HDR_STEADYSHOT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 49
    sput-object v9, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->$VALUES:[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput p3, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->mModeCode:I

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;)I
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->getModeCode()I

    move-result p0

    return p0
.end method

.method private getModeCode()I
    .registers 1

    .line 64
    iget p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->mModeCode:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;
    .registers 2

    .line 49
    const-class v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;
    .registers 1

    .line 49
    sget-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->$VALUES:[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    invoke-virtual {v0}, [Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$VideoMode;

    return-object v0
.end method
