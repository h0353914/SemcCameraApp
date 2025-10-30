.class public final enum Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;
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
    name = "StopOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$Action;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

.field public static final enum LOWBATTERY_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

.field public static final enum SIDE_SENSE_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

.field public static final enum THERMAL_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

.field public static final enum USER_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 93
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    const-string v1, "USER_STOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->USER_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    .line 94
    new-instance v1, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    const-string v3, "THERMAL_STOP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->THERMAL_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    .line 95
    new-instance v3, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    const-string v5, "LOWBATTERY_STOP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->LOWBATTERY_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    .line 96
    new-instance v5, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    const-string v7, "SIDE_SENSE_STOP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->SIDE_SENSE_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 92
    sput-object v7, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getType(ZZ)Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;
    .registers 2

    if-eqz p0, :cond_5

    .line 101
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->THERMAL_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    return-object p0

    :cond_5
    if-eqz p1, :cond_a

    .line 103
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->LOWBATTERY_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    return-object p0

    .line 105
    :cond_a
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->USER_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;
    .registers 2

    .line 92
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;
    .registers 1

    .line 92
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    return-object v0
.end method
