.class public final enum Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;
.super Ljava/lang/Enum;
.source "FontUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/font/FontUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RobotoFontType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum BLACK:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum BLACK_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum BOLD:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum BOLD_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum CONDENSED:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum CONDENSED_BOLD:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum CONDENSED_BOLD_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum CONDENSED_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum CONDENSED_LIGHT:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum CONDENSED_LIGHT_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum LIGHT:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum LIGHT_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum MEDIUM_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum REGULAR:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum REGULAR_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum THIN:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum THIN_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;


# instance fields
.field private final mPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 21

    .line 20
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "THIN"

    const/4 v2, 0x0

    const-string v3, "/system/fonts/Roboto-Thin.ttf"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->THIN:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 21
    new-instance v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v3, "THIN_ITALIC"

    const/4 v4, 0x1

    const-string v5, "/system/fonts/Roboto-ThinItalic.ttf"

    invoke-direct {v1, v3, v4, v5}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->THIN_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 22
    new-instance v3, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v5, "LIGHT"

    const/4 v6, 0x2

    const-string v7, "/system/fonts/Roboto-Light.ttf"

    invoke-direct {v3, v5, v6, v7}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->LIGHT:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 23
    new-instance v5, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v7, "LIGHT_ITALIC"

    const/4 v8, 0x3

    const-string v9, "/system/fonts/Roboto-LightItalic.ttf"

    invoke-direct {v5, v7, v8, v9}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->LIGHT_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 24
    new-instance v7, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v9, "REGULAR"

    const/4 v10, 0x4

    const-string v11, "/system/fonts/Roboto-Regular.ttf"

    invoke-direct {v7, v9, v10, v11}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->REGULAR:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 25
    new-instance v9, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v11, "REGULAR_ITALIC"

    const/4 v12, 0x5

    const-string v13, "/system/fonts/Roboto-Italic.ttf"

    invoke-direct {v9, v11, v12, v13}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->REGULAR_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 26
    new-instance v11, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v13, "MEDIUM"

    const/4 v14, 0x6

    const-string v15, "/system/fonts/Roboto-Medium.ttf"

    invoke-direct {v11, v13, v14, v15}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 27
    new-instance v13, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v15, "MEDIUM_ITALIC"

    const/4 v14, 0x7

    const-string v12, "/system/fonts/Roboto-MediumItalic.ttf"

    invoke-direct {v13, v15, v14, v12}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 28
    new-instance v12, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v15, "BLACK"

    const/16 v14, 0x8

    const-string v10, "/system/fonts/Roboto-Black.ttf"

    invoke-direct {v12, v15, v14, v10}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->BLACK:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 29
    new-instance v10, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v15, "BLACK_ITALIC"

    const/16 v14, 0x9

    const-string v8, "/system/fonts/Roboto-BlackItalic.ttf"

    invoke-direct {v10, v15, v14, v8}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->BLACK_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 30
    new-instance v8, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v15, "BOLD"

    const/16 v14, 0xa

    const-string v6, "/system/fonts/Roboto-Bold.ttf"

    invoke-direct {v8, v15, v14, v6}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->BOLD:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 31
    new-instance v6, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v15, "BOLD_ITALIC"

    const/16 v14, 0xb

    const-string v4, "/system/fonts/Roboto-BoldItalic.ttf"

    invoke-direct {v6, v15, v14, v4}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->BOLD_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 32
    new-instance v4, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v15, "CONDENSED_LIGHT"

    const/16 v14, 0xc

    const-string v2, "/system/fonts/RobotoCondensed-Light.ttf"

    invoke-direct {v4, v15, v14, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_LIGHT:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 33
    new-instance v2, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v15, "CONDENSED_LIGHT_ITALIC"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "/system/fonts/RobotoCondensed-LightItalic.ttf"

    invoke-direct {v2, v15, v14, v4}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_LIGHT_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 34
    new-instance v4, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v15, "CONDENSED"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "/system/fonts/RobotoCondensed-Regular.ttf"

    invoke-direct {v4, v15, v14, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 35
    new-instance v2, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v15, "CONDENSED_ITALIC"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "/system/fonts/RobotoCondensed-Italic.ttf"

    invoke-direct {v2, v15, v14, v4}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 36
    new-instance v4, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v15, "CONDENSED_BOLD"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const-string v2, "/system/fonts/RobotoCondensed-Bold.ttf"

    invoke-direct {v4, v15, v14, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_BOLD:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 37
    new-instance v2, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v15, "CONDENSED_BOLD_ITALIC"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const-string v4, "/system/fonts/RobotoCondensed-BoldItalic.ttf"

    invoke-direct {v2, v15, v14, v4}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_BOLD_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const/16 v4, 0x12

    new-array v4, v4, [Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const/4 v15, 0x0

    aput-object v0, v4, v15

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

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    aput-object v2, v4, v14

    .line 19
    sput-object v4, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->$VALUES:[Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

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

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->mPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Ljava/lang/String;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;
    .registers 2

    .line 19
    const-class v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;
    .registers 1

    .line 19
    sget-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->$VALUES:[Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    return-object v0
.end method
