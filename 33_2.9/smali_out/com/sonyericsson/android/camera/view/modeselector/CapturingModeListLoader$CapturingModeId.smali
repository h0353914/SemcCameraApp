.class final enum Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;
.super Ljava/lang/Enum;
.source "CapturingModeListLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CapturingModeId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

.field public static final enum AR_EFFECT:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

.field public static final enum BACKGROUDDEFOCUS:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

.field public static final enum BOKEH:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

.field public static final enum CREATIVE_EFFECT:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

.field public static final enum DUAL_BACKGROUND_DEFOCUS:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

.field public static final enum DUAL_MONOCHROME:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

.field public static final enum GOOGLE_LENS:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

.field public static final enum MANUAL:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

.field public static final enum NIGHT_MODE:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

.field public static final enum PANORAMA:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

.field public static final enum PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

.field public static final enum SLOW_MOTION:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 47
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    const-string v1, "NIGHT_MODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->NIGHT_MODE:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    .line 48
    new-instance v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    const-string v3, "DUAL_BACKGROUND_DEFOCUS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->DUAL_BACKGROUND_DEFOCUS:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    .line 49
    new-instance v3, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    const-string v5, "DUAL_MONOCHROME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->DUAL_MONOCHROME:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    .line 50
    new-instance v5, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    const-string v7, "GOOGLE_LENS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->GOOGLE_LENS:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    .line 51
    new-instance v7, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    const-string v9, "BOKEH"

    const/4 v10, 0x4

    const-string v11, "BOKEH_EFFECT"

    invoke-direct {v7, v9, v10, v11}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->BOKEH:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    .line 52
    new-instance v9, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    const-string v11, "BACKGROUDDEFOCUS"

    const/4 v12, 0x5

    const-string v13, "BackgroundDefocus"

    invoke-direct {v9, v11, v12, v13}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->BACKGROUDDEFOCUS:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    .line 53
    new-instance v11, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    const-string v13, "SLOW_MOTION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v13}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->SLOW_MOTION:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    .line 54
    new-instance v13, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    const-string v15, "AR_EFFECT"

    const/4 v14, 0x7

    const-string v12, "AR Effect"

    invoke-direct {v13, v15, v14, v12}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->AR_EFFECT:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    .line 55
    new-instance v12, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    const-string v15, "MANUAL"

    const/16 v14, 0x8

    invoke-direct {v12, v15, v14, v15}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->MANUAL:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    .line 56
    new-instance v15, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    const-string v14, "PORTRAIT_SELFIE"

    const/16 v10, 0x9

    invoke-direct {v15, v14, v10, v14}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    .line 57
    new-instance v14, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    const-string v10, "CREATIVE_EFFECT"

    const/16 v8, 0xa

    const-string v6, "capturing_mode_single_effect"

    invoke-direct {v14, v10, v8, v6}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->CREATIVE_EFFECT:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    .line 58
    new-instance v6, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    const-string v10, "PANORAMA"

    const/16 v8, 0xb

    const-string v4, "capturing_mode_sweep_panorama"

    invoke-direct {v6, v10, v8, v4}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->PANORAMA:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    const/16 v4, 0xc

    new-array v4, v4, [Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v15, v4, v0

    const/16 v0, 0xa

    aput-object v14, v4, v0

    aput-object v6, v4, v8

    .line 46
    sput-object v4, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->$VALUES:[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

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

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;
    .registers 2

    .line 46
    const-class v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;
    .registers 1

    .line 46
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->$VALUES:[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->name:Ljava/lang/String;

    return-object p0
.end method
