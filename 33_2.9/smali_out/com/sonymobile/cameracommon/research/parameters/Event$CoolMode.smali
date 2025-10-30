.class public final enum Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;
.super Ljava/lang/Enum;
.source "Event.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/research/parameters/Event$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/parameters/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CoolMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$Action;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;

.field public static final enum HEATED_OVER_COOLING_LOW:Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;

.field public static final enum HEATED_OVER_COOLING_LOW_ON_STARTUP:Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;

.field public static final enum HEATED_OVER_COOLING_ULTRA_LOW:Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;

.field public static final enum HEATED_OVER_COOLING_ULTRA_LOW_ON_STARTUP:Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 66
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;

    const-string v1, "HEATED_OVER_COOLING_LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;->HEATED_OVER_COOLING_LOW:Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;

    .line 67
    new-instance v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;

    const-string v3, "HEATED_OVER_COOLING_ULTRA_LOW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;->HEATED_OVER_COOLING_ULTRA_LOW:Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;

    .line 68
    new-instance v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;

    const-string v5, "HEATED_OVER_COOLING_LOW_ON_STARTUP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;->HEATED_OVER_COOLING_LOW_ON_STARTUP:Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;

    .line 69
    new-instance v5, Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;

    const-string v7, "HEATED_OVER_COOLING_ULTRA_LOW_ON_STARTUP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;->HEATED_OVER_COOLING_ULTRA_LOW_ON_STARTUP:Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 65
    sput-object v7, Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;
    .registers 2

    .line 65
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;
    .registers 1

    .line 65
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;

    return-object v0
.end method
