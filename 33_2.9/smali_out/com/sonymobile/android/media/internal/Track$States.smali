.class public final enum Lcom/sonymobile/android/media/internal/Track$States;
.super Ljava/lang/Enum;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/media/internal/Track;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "States"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/android/media/internal/Track$States;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/media/internal/Track$States;

.field public static final enum PAUSED:Lcom/sonymobile/android/media/internal/Track$States;

.field public static final enum STARTED:Lcom/sonymobile/android/media/internal/Track$States;

.field public static final enum STOPPED:Lcom/sonymobile/android/media/internal/Track$States;

.field public static final enum STOPPING:Lcom/sonymobile/android/media/internal/Track$States;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 108
    new-instance v0, Lcom/sonymobile/android/media/internal/Track$States;

    const-string v1, "STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/media/internal/Track$States;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/media/internal/Track$States;->STARTED:Lcom/sonymobile/android/media/internal/Track$States;

    .line 109
    new-instance v1, Lcom/sonymobile/android/media/internal/Track$States;

    const-string v3, "STOPPED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonymobile/android/media/internal/Track$States;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonymobile/android/media/internal/Track$States;->STOPPED:Lcom/sonymobile/android/media/internal/Track$States;

    .line 110
    new-instance v3, Lcom/sonymobile/android/media/internal/Track$States;

    const-string v5, "STOPPING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sonymobile/android/media/internal/Track$States;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sonymobile/android/media/internal/Track$States;->STOPPING:Lcom/sonymobile/android/media/internal/Track$States;

    .line 111
    new-instance v5, Lcom/sonymobile/android/media/internal/Track$States;

    const-string v7, "PAUSED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sonymobile/android/media/internal/Track$States;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sonymobile/android/media/internal/Track$States;->PAUSED:Lcom/sonymobile/android/media/internal/Track$States;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sonymobile/android/media/internal/Track$States;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 107
    sput-object v7, Lcom/sonymobile/android/media/internal/Track$States;->$VALUES:[Lcom/sonymobile/android/media/internal/Track$States;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/media/internal/Track$States;
    .registers 2

    .line 107
    const-class v0, Lcom/sonymobile/android/media/internal/Track$States;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/android/media/internal/Track$States;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/android/media/internal/Track$States;
    .registers 1

    .line 107
    sget-object v0, Lcom/sonymobile/android/media/internal/Track$States;->$VALUES:[Lcom/sonymobile/android/media/internal/Track$States;

    invoke-virtual {v0}, [Lcom/sonymobile/android/media/internal/Track$States;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/media/internal/Track$States;

    return-object v0
.end method
