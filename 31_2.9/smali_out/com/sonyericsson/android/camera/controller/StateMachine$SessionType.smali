.class public final enum Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;
.super Ljava/lang/Enum;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SessionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

.field public static final enum SESSION_TYPE_BOKEH:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

.field public static final enum SESSION_TYPE_HDR:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

.field public static final enum SESSION_TYPE_LOW_LIGHT:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

.field public static final enum SESSION_TYPE_NIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

.field public static final enum SESSION_TYPE_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

.field public static final enum SESSION_TYPE_QUICK_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

.field public static final enum SESSION_TYPE_WALKING:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;


# instance fields
.field private mIsMultiFrame:Z


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 3397
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    const-string v1, "SESSION_TYPE_NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    .line 3398
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    const-string v1, "SESSION_TYPE_LOW_LIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_LOW_LIGHT:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    .line 3399
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    const-string v1, "SESSION_TYPE_QUICK_CAPTURE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_QUICK_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    .line 3400
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    const-string v1, "SESSION_TYPE_NIGHT_PORTRAIT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    .line 3401
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    const-string v1, "SESSION_TYPE_HDR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_HDR:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    .line 3402
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    const-string v1, "SESSION_TYPE_BOKEH"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_BOKEH:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    .line 3403
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    const-string v1, "SESSION_TYPE_WALKING"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_WALKING:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    const/4 v0, 0x7

    .line 3396
    new-array v0, v0, [Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_LOW_LIGHT:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_QUICK_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_HDR:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_BOKEH:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_WALKING:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->$VALUES:[Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 3406
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3407
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->mIsMultiFrame:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;
    .registers 2

    .line 3396
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;
    .registers 1

    .line 3396
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->$VALUES:[Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    return-object v0
.end method


# virtual methods
.method public isMultiFrame()Z
    .registers 2

    .line 3411
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->mIsMultiFrame:Z

    return v0
.end method
