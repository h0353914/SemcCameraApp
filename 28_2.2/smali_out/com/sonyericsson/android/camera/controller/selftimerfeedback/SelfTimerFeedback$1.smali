.class Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$1;
.super Ljava/lang/Object;
.source "SelfTimerFeedback.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$1;->this$0:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTick(J)V
    .registers 12

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$1;->this$0:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;

    # getter for: Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mDuration:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->access$000(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v0, p1

    .line 94
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_26

    new-array v2, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remain time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_26
    const-wide/16 v5, 0x3e8

    .line 96
    rem-long v5, v0, v5

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_43

    const-wide/16 v5, 0xfa0

    cmp-long v2, v0, v5

    if-ltz v2, :cond_43

    cmp-long p1, p1, v7

    if-lez p1, :cond_43

    .line 97
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$1;->this$0:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;

    # getter for: Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mListener:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$SelfTimerFeedbackListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->access$100(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$SelfTimerFeedbackListener;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$SelfTimerFeedbackListener;->onSoundTypeChange(J)V

    :cond_43
    cmp-long p1, v0, v7

    if-gtz p1, :cond_51

    .line 101
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$1;->this$0:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;

    # getter for: Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mListener:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$SelfTimerFeedbackListener;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->access$100(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$SelfTimerFeedbackListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$SelfTimerFeedbackListener;->onCountDownFinished()V

    return-void

    .line 106
    :cond_51
    :goto_51
    # getter for: Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->SELF_TIMER_LEVEL_THRESHOLDS:[I
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->access$200()[I

    move-result-object p1

    array-length p1, p1

    if-ge v3, p1, :cond_67

    .line 107
    # getter for: Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->SELF_TIMER_LEVEL_THRESHOLDS:[I
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->access$200()[I

    move-result-object p1

    aget p1, p1, v3

    int-to-long p1, p1

    cmp-long p1, v0, p1

    if-gtz p1, :cond_64

    goto :goto_67

    :cond_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    .line 113
    :cond_67
    :goto_67
    # getter for: Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->SELF_TIMER_LEVEL_THRESHOLDS:[I
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->access$200()[I

    move-result-object p1

    array-length p1, p1

    if-lt v3, p1, :cond_75

    .line 114
    # getter for: Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->SELF_TIMER_LEVEL_THRESHOLDS:[I
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->access$200()[I

    move-result-object p1

    array-length p1, p1

    add-int/lit8 v3, p1, -0x1

    .line 117
    :cond_75
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$1;->this$0:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;

    # getter for: Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mIsBlinkNeeded:Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->access$300(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)Z

    move-result p1

    if-eqz p1, :cond_af

    if-nez v3, :cond_96

    .line 120
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$1;->this$0:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;

    # getter for: Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mIsOnBlinkFinishedCalled:Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->access$400(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)Z

    move-result p1

    if-nez p1, :cond_af

    .line 121
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$1;->this$0:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;

    # getter for: Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mListener:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$SelfTimerFeedbackListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->access$100(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$SelfTimerFeedbackListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$SelfTimerFeedbackListener;->onBlinkFinished()V

    .line 122
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$1;->this$0:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;

    # setter for: Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mIsOnBlinkFinishedCalled:Z
    invoke-static {p0, v4}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->access$402(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;Z)Z

    goto :goto_af

    .line 124
    :cond_96
    # getter for: Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->SELF_TIMER_LEVEL_THRESHOLDS:[I
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->access$200()[I

    move-result-object p1

    aget p1, p1, v3

    int-to-long p1, p1

    sub-long/2addr v0, p1

    .line 125
    # getter for: Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->SELF_TIMER_INTERVALS:[I
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->access$500()[I

    move-result-object p1

    aget p1, p1, v3

    int-to-long p1, p1

    rem-long/2addr v0, p1

    cmp-long p1, v0, v7

    if-nez p1, :cond_af

    .line 126
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$1;->this$0:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;

    # invokes: Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->blink()V
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->access$600(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)V

    :cond_af
    :goto_af
    return-void
.end method
