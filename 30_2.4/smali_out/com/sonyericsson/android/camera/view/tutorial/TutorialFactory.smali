.class Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;
.super Ljava/lang/Object;
.source "TutorialFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(ILjava/util/List;Ljava/util/List;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;",
            ">;)",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;

    invoke-direct {v0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;-><init>(ILjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public create(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;
    .registers 7

    .line 40
    sget-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x3c0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_3e

    .line 92
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;

    invoke-direct {v0, p1, p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I)V

    goto :goto_3c

    .line 77
    :pswitch_15
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureListContent;

    new-array v3, v3, [Ljava/lang/Object;

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-direct {v0, p1, p2, v3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureListContent;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I[Ljava/lang/Object;)V

    goto :goto_3c

    .line 71
    :pswitch_23
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureListContent;

    invoke-direct {v0, p1, p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureListContent;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I)V

    goto :goto_3c

    .line 48
    :pswitch_29
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;

    new-array v3, v3, [Ljava/lang/Object;

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-direct {v0, p1, p2, v3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I[Ljava/lang/Object;)V

    goto :goto_3c

    .line 42
    :pswitch_37
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$SaveLocationTutorialContent;

    invoke-direct {v0, p2}, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$SaveLocationTutorialContent;-><init>(I)V

    :goto_3c
    return-object v0

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_37
        :pswitch_29
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_15
    .end packed-switch
.end method
