.class public final enum Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/parameters/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LaunchFeatureListWay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;

.field public static final enum FEATURE_LIST_BUTTON:Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;

.field public static final enum NEW_FEATURE_BAR:Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 396
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;

    const-string v1, "FEATURE_LIST_BUTTON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;->FEATURE_LIST_BUTTON:Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;

    .line 397
    new-instance v1, Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;

    const-string v3, "NEW_FEATURE_BAR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;->NEW_FEATURE_BAR:Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 395
    sput-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 395
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;
    .registers 2

    .line 395
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;
    .registers 1

    .line 395
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;

    return-object v0
.end method
