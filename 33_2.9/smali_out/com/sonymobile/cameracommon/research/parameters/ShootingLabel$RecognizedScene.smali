.class final enum Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;
.super Ljava/lang/Enum;
.source "ShootingLabel.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RecognizedScene"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum ACTION:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum AUTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum BABY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum BACKLIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum BACKLIGHT_PORTRAIT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum BEACH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum CANDLELIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum DARK:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum DISH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum DOCUMENT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum FIREWORKS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum LANDSCAPE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum LOWLIGHT_BACKLIT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum MACRO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum NIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum NIGHT_PORTRAIT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum PARTY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum PET:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum PORTRAIT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum SNOW:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum SPORTS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum SPOTLIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum STEADYPHOTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum SUNSET:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum THEATRE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 28

    .line 292
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    const-string v3, "auto"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->AUTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 293
    new-instance v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v3, "ACTION"

    const/4 v4, 0x1

    const-string v5, "action"

    invoke-direct {v1, v3, v4, v5}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->ACTION:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 294
    new-instance v3, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v5, "PORTRAIT"

    const/4 v6, 0x2

    const-string v7, "portrait"

    invoke-direct {v3, v5, v6, v7}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->PORTRAIT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 295
    new-instance v5, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v7, "LANDSCAPE"

    const/4 v8, 0x3

    const-string v9, "landscape"

    invoke-direct {v5, v7, v8, v9}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->LANDSCAPE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 296
    new-instance v7, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v9, "NIGHT"

    const/4 v10, 0x4

    const-string v11, "night"

    invoke-direct {v7, v9, v10, v11}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->NIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 297
    new-instance v9, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v11, "NIGHT_PORTRAIT"

    const/4 v12, 0x5

    const-string v13, "night-portrait"

    invoke-direct {v9, v11, v12, v13}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->NIGHT_PORTRAIT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 298
    new-instance v11, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v13, "THEATRE"

    const/4 v14, 0x6

    const-string v15, "theatre"

    invoke-direct {v11, v13, v14, v15}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->THEATRE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 299
    new-instance v13, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v15, "BEACH"

    const/4 v14, 0x7

    const-string v12, "beach"

    invoke-direct {v13, v15, v14, v12}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->BEACH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 300
    new-instance v12, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v15, "SNOW"

    const/16 v14, 0x8

    const-string v10, "snow"

    invoke-direct {v12, v15, v14, v10}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->SNOW:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 301
    new-instance v10, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v15, "SUNSET"

    const/16 v14, 0x9

    const-string v8, "sunset"

    invoke-direct {v10, v15, v14, v8}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->SUNSET:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 302
    new-instance v8, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v15, "STEADYPHOTO"

    const/16 v14, 0xa

    const-string v6, "steadyphoto"

    invoke-direct {v8, v15, v14, v6}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->STEADYPHOTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 303
    new-instance v6, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v15, "FIREWORKS"

    const/16 v14, 0xb

    const-string v4, "fireworks"

    invoke-direct {v6, v15, v14, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->FIREWORKS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 304
    new-instance v4, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v15, "SPORTS"

    const/16 v14, 0xc

    const-string v2, "sports"

    invoke-direct {v4, v15, v14, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->SPORTS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 305
    new-instance v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v15, "PARTY"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "party"

    invoke-direct {v2, v15, v14, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->PARTY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 306
    new-instance v4, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v15, "CANDLELIGHT"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "candlelight"

    invoke-direct {v4, v15, v14, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->CANDLELIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 307
    new-instance v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v15, "DOCUMENT"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "document"

    invoke-direct {v2, v15, v14, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->DOCUMENT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 308
    new-instance v4, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v15, "BACKLIGHT"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const-string v2, "backlight"

    invoke-direct {v4, v15, v14, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->BACKLIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 309
    new-instance v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v15, "BACKLIGHT_PORTRAIT"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const-string v4, "backlight-portrait"

    invoke-direct {v2, v15, v14, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->BACKLIGHT_PORTRAIT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 310
    new-instance v4, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v15, "DARK"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const-string v2, "dark"

    invoke-direct {v4, v15, v14, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->DARK:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 311
    new-instance v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v15, "BABY"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const-string v4, "baby"

    invoke-direct {v2, v15, v14, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->BABY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 312
    new-instance v4, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v15, "SPOTLIGHT"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const-string v2, "spot-light"

    invoke-direct {v4, v15, v14, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->SPOTLIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 313
    new-instance v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v15, "DISH"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const-string v4, "dish"

    invoke-direct {v2, v15, v14, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->DISH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 314
    new-instance v4, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v15, "MACRO"

    const/16 v14, 0x16

    move-object/from16 v25, v2

    const-string v2, "macro"

    invoke-direct {v4, v15, v14, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->MACRO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 315
    new-instance v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v14, "PET"

    const/16 v15, 0x17

    move-object/from16 v26, v4

    const-string v4, "pet"

    invoke-direct {v2, v14, v15, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->PET:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 316
    new-instance v4, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v14, "LOWLIGHT_BACKLIT"

    const/16 v15, 0x18

    move-object/from16 v27, v2

    const-string v2, "lowlight_backlit"

    invoke-direct {v4, v14, v15, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->LOWLIGHT_BACKLIT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const/16 v2, 0x19

    new-array v2, v2, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const/4 v14, 0x0

    aput-object v0, v2, v14

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v4, v2, v0

    .line 291
    sput-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

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

    .line 321
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 322
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;
    .registers 2

    .line 291
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;
    .registers 1

    .line 291
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .registers 2

    .line 327
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->mValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDefaultValue()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .registers 1

    .line 332
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->AUTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    return-object p0
.end method
