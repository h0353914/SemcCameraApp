.class final enum Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;
.super Ljava/lang/Enum;
.source "VariableSourceMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

.field public static final enum IDLE:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

.field public static final enum RUNNING:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 83
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    const-string v1, "RUNNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;->RUNNING:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    .line 84
    new-instance v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    const-string v3, "IDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 82
    sput-object v3, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;->$VALUES:[Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;
    .registers 2

    .line 82
    const-class v0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;
    .registers 1

    .line 82
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;->$VALUES:[Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$State;

    return-object v0
.end method
