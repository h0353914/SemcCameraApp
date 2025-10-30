.class public final enum Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;
.super Ljava/lang/Enum;
.source "ExternalCameraAppSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShareSettingCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

.field public static final enum COMMON:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

.field public static final enum PHOTO:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

.field public static final enum VIDEO:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 126
    new-instance v0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    const-string v1, "PHOTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->PHOTO:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    .line 130
    new-instance v1, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    const-string v3, "VIDEO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->VIDEO:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    .line 134
    new-instance v3, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    const-string v5, "COMMON"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->COMMON:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 122
    sput-object v5, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->$VALUES:[Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;
    .registers 2

    .line 122
    const-class v0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;
    .registers 1

    .line 122
    sget-object v0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->$VALUES:[Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    return-object v0
.end method


# virtual methods
.method public isAccepted(Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;)Z
    .registers 6

    .line 138
    sget-object v0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$1;->$SwitchMap$com$sonyericsson$android$camera$ExternalCameraAppSetting$ShareSettingCategory:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_14

    const/4 v3, 0x2

    if-eq v0, v3, :cond_14

    const/4 p0, 0x3

    if-eq v0, p0, :cond_13

    return v1

    :cond_13
    return v2

    :cond_14
    if-ne p0, p1, :cond_17

    move v1, v2

    :cond_17
    return v1
.end method
