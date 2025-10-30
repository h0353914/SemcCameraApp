.class public final enum Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;
.super Ljava/lang/Enum;
.source "CommonUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/utility/CommonUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DefaultGallerySetting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

.field public static final enum GOOGLE_PHOTOS:Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

.field public static final enum GOOGLE_PHOTOS_OFFLINE:Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

.field public static final enum OTHER:Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

.field public static final enum SONY_ALBUM:Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;


# instance fields
.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 38
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    const-string v1, "SONY_ALBUM"

    const-string v2, "com.sonyericsson.album"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;->SONY_ALBUM:Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    .line 39
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    const-string v1, "GOOGLE_PHOTOS"

    const-string v2, "com.google.android.apps.photos"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;->GOOGLE_PHOTOS:Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    .line 40
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    const-string v1, "GOOGLE_PHOTOS_OFFLINE"

    const-string v2, "com.google.android.apps.photos.offline"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;->GOOGLE_PHOTOS_OFFLINE:Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    .line 41
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    const-string v1, "OTHER"

    const/4 v2, 0x3

    const/4 v6, 0x0

    invoke-direct {v0, v1, v2, v6}, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;->OTHER:Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    const/4 v0, 0x4

    .line 37
    new-array v0, v0, [Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;->SONY_ALBUM:Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;->GOOGLE_PHOTOS:Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;->GOOGLE_PHOTOS_OFFLINE:Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;->OTHER:Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;->$VALUES:[Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

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

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;
    .registers 2

    .line 37
    const-class v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;
    .registers 1

    .line 37
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;->$VALUES:[Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    return-object v0
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
