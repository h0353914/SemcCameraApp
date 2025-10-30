.class public final enum Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;
.super Ljava/lang/Enum;
.source "CameraParameterConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameterConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SceneMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum ACTION:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum BABY:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum BACKLIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum BACKLIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum BARCODE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum BEACH:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum CANDLELIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum DARK:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum DISH:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum DOCUMENT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum FIREWORKS:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum LANDSCAPE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum LOWLIGHT_BACKLIT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum NIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum NIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum PARTY:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum PEG:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum PORTRAIT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum SNOW:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum SPORTS:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum SPOTLIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum STEADYPHOTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum SUNSET:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum THEATRE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;


# instance fields
.field private mSceneModeApi1:Ljava/lang/String;

.field private mSceneModeApi2:I


# direct methods
.method static constructor <clinit>()V
    .registers 29

    .line 65
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    const-string v3, "auto"

    const/16 v4, 0x64

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 67
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v3, "PORTRAIT"

    const/4 v4, 0x1

    const-string v5, "portrait"

    const/4 v6, 0x3

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->PORTRAIT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 69
    new-instance v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v5, "NIGHT_PORTRAIT"

    const/4 v7, 0x2

    const-string v8, "night-portrait"

    const/4 v9, 0x6

    invoke-direct {v3, v5, v7, v8, v9}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->NIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 71
    new-instance v5, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v8, "LANDSCAPE"

    const-string v10, "landscape"

    const/4 v11, 0x4

    invoke-direct {v5, v8, v6, v10, v11}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->LANDSCAPE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 73
    new-instance v8, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v10, "NIGHT"

    const-string v12, "night"

    const/4 v13, 0x5

    invoke-direct {v8, v10, v11, v12, v13}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->NIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 75
    new-instance v10, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v12, "SNOW"

    const-string v14, "snow"

    const/16 v15, 0x9

    invoke-direct {v10, v12, v13, v14, v15}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v10, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->SNOW:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 77
    new-instance v12, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v14, "SPORTS"

    const-string v13, "sports"

    const/16 v11, 0xd

    invoke-direct {v12, v14, v9, v13, v11}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->SPORTS:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 79
    new-instance v13, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v14, "PARTY"

    const/4 v9, 0x7

    const-string v6, "party"

    const/16 v4, 0xe

    invoke-direct {v13, v14, v9, v6, v4}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v13, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->PARTY:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 81
    new-instance v6, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v14, "BEACH"

    const/16 v2, 0x8

    const-string v4, "beach"

    invoke-direct {v6, v14, v2, v4, v2}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->BEACH:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 83
    new-instance v4, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v14, "FIREWORKS"

    const-string v2, "fireworks"

    const/16 v11, 0xc

    invoke-direct {v4, v14, v15, v2, v11}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->FIREWORKS:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 85
    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v14, "ACTION"

    const/16 v15, 0xa

    const-string v11, "action"

    invoke-direct {v2, v14, v15, v11, v7}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->ACTION:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 87
    new-instance v11, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v14, "THEATRE"

    const/16 v7, 0xb

    const-string v15, "theatre"

    invoke-direct {v11, v14, v7, v15, v9}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v11, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->THEATRE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 89
    new-instance v14, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v15, "SUNSET"

    const-string v9, "sunset"

    move-object/from16 v16, v11

    const/16 v7, 0xa

    const/16 v11, 0xc

    invoke-direct {v14, v15, v11, v9, v7}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v14, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->SUNSET:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 91
    new-instance v7, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v9, "STEADYPHOTO"

    const-string v11, "steadyphoto"

    move-object/from16 v17, v14

    const/16 v14, 0xd

    const/16 v15, 0xb

    invoke-direct {v7, v9, v14, v11, v15}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->STEADYPHOTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 93
    new-instance v9, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v11, "CANDLELIGHT"

    const-string v14, "candlelight"

    const/16 v15, 0xf

    move-object/from16 v18, v7

    const/16 v7, 0xe

    invoke-direct {v9, v11, v7, v14, v15}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->CANDLELIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 95
    new-instance v7, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v11, "DOCUMENT"

    const-string v14, "document"

    move-object/from16 v19, v9

    const/16 v9, 0x65

    invoke-direct {v7, v11, v15, v14, v9}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->DOCUMENT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 97
    new-instance v9, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v11, "BACKLIGHT"

    const/16 v14, 0x10

    const-string v15, "backlight"

    move-object/from16 v20, v7

    const/16 v7, 0x66

    invoke-direct {v9, v11, v14, v15, v7}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->BACKLIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 99
    new-instance v7, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v11, "BACKLIGHT_PORTRAIT"

    const/16 v15, 0x11

    const-string v14, "backlight-portrait"

    move-object/from16 v21, v9

    const/16 v9, 0x67

    invoke-direct {v7, v11, v15, v14, v9}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->BACKLIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 101
    new-instance v9, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v11, "DARK"

    const/16 v14, 0x12

    const-string v15, "dark"

    move-object/from16 v22, v7

    const/16 v7, 0x68

    invoke-direct {v9, v11, v14, v15, v7}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->DARK:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 103
    new-instance v7, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v11, "BABY"

    const/16 v15, 0x13

    const-string v14, "baby"

    move-object/from16 v23, v9

    const/16 v9, 0x69

    invoke-direct {v7, v11, v15, v14, v9}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->BABY:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 105
    new-instance v9, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v11, "SPOTLIGHT"

    const/16 v14, 0x14

    const-string v15, "spot-light"

    move-object/from16 v24, v7

    const/16 v7, 0x6a

    invoke-direct {v9, v11, v14, v15, v7}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->SPOTLIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 107
    new-instance v7, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v11, "DISH"

    const/16 v15, 0x15

    const-string v14, "dish"

    move-object/from16 v25, v9

    const/16 v9, 0x6b

    invoke-direct {v7, v11, v15, v14, v9}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->DISH:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 109
    new-instance v9, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v11, "PEG"

    const/16 v14, 0x16

    const-string v15, "pet"

    move-object/from16 v26, v7

    const/16 v7, 0x6d

    invoke-direct {v9, v11, v14, v15, v7}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->PEG:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 111
    new-instance v7, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v11, "BARCODE"

    const/16 v14, 0x17

    const-string v15, "barcode"

    move-object/from16 v27, v9

    const/16 v9, 0x10

    invoke-direct {v7, v11, v14, v15, v9}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->BARCODE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 113
    new-instance v9, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v11, "LOWLIGHT_BACKLIT"

    const/16 v14, 0x18

    const-string v15, "lowlight_backlit"

    move-object/from16 v28, v7

    const/16 v7, 0x71

    invoke-direct {v9, v11, v14, v15, v7}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->LOWLIGHT_BACKLIT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const/16 v7, 0x19

    new-array v7, v7, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const/4 v11, 0x0

    aput-object v0, v7, v11

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v3, v7, v0

    const/4 v0, 0x3

    aput-object v5, v7, v0

    const/4 v0, 0x4

    aput-object v8, v7, v0

    const/4 v0, 0x5

    aput-object v10, v7, v0

    const/4 v0, 0x6

    aput-object v12, v7, v0

    const/4 v0, 0x7

    aput-object v13, v7, v0

    const/16 v0, 0x8

    aput-object v6, v7, v0

    const/16 v0, 0x9

    aput-object v4, v7, v0

    const/16 v0, 0xa

    aput-object v2, v7, v0

    const/16 v0, 0xb

    aput-object v16, v7, v0

    const/16 v0, 0xc

    aput-object v17, v7, v0

    const/16 v0, 0xd

    aput-object v18, v7, v0

    const/16 v0, 0xe

    aput-object v19, v7, v0

    const/16 v0, 0xf

    aput-object v20, v7, v0

    const/16 v0, 0x10

    aput-object v21, v7, v0

    const/16 v0, 0x11

    aput-object v22, v7, v0

    const/16 v0, 0x12

    aput-object v23, v7, v0

    const/16 v0, 0x13

    aput-object v24, v7, v0

    const/16 v0, 0x14

    aput-object v25, v7, v0

    const/16 v0, 0x15

    aput-object v26, v7, v0

    const/16 v0, 0x16

    aput-object v27, v7, v0

    const/16 v0, 0x17

    aput-object v28, v7, v0

    const/16 v0, 0x18

    aput-object v9, v7, v0

    .line 64
    sput-object v7, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 121
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->mSceneModeApi1:Ljava/lang/String;

    .line 122
    iput p4, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->mSceneModeApi2:I

    return-void
.end method

.method public static getApi1Value(I)Ljava/lang/String;
    .registers 6

    .line 126
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 127
    iget v4, v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->mSceneModeApi2:I

    if-ne v4, p0, :cond_11

    .line 128
    iget-object p0, v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->mSceneModeApi1:Ljava/lang/String;

    return-object p0

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getApi2Value(Ljava/lang/String;)I
    .registers 6

    .line 135
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 136
    iget-object v4, v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->mSceneModeApi1:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 137
    iget p0, v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->mSceneModeApi2:I

    return p0

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    const/16 p0, 0x64

    return p0
.end method

.method public static getSceneMode(I)Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;
    .registers 4

    .line 153
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    move-result-object v0

    const/4 v1, 0x0

    .line 154
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_16

    .line 155
    aget-object v2, v0, v1

    invoke-direct {v2}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->getSceneValue()I

    move-result v2

    if-ne v2, p0, :cond_13

    .line 156
    aget-object p0, v0, v1

    return-object p0

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSceneValue()I
    .registers 1

    .line 149
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->mSceneModeApi2:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;
    .registers 2

    .line 64
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;
    .registers 1

    .line 64
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->mSceneModeApi1:Ljava/lang/String;

    return-object p0
.end method
