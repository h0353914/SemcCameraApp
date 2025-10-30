.class public final Lcom/google/android/gms/common/internal/zzab;
.super Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/zzab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x1010048

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private zza(Landroid/content/res/Resources;)V
    .registers 3

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzab;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzab;->setTextSize(F)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zzab;->setMinHeight(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zzab;->setMinWidth(I)V

    return-void
.end method

.method private zzb(Landroid/content/res/Resources;II)V
    .registers 5

    packed-switch p2, :pswitch_data_3a

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown button size: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1a
    sget p2, Lcom/google/android/gms/R$drawable;->common_signin_btn_icon_dark:I

    sget v0, Lcom/google/android/gms/R$drawable;->common_signin_btn_icon_light:I

    goto :goto_23

    :pswitch_1f
    sget p2, Lcom/google/android/gms/R$drawable;->common_signin_btn_text_dark:I

    sget v0, Lcom/google/android/gms/R$drawable;->common_signin_btn_text_light:I

    :goto_23
    invoke-direct {p0, p3, p2, v0}, Lcom/google/android/gms/common/internal/zzab;->zzd(III)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_32

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zzab;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Could not find background resource!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1f
        :pswitch_1a
    .end packed-switch
.end method

.method private zzc(Landroid/content/res/Resources;II)V
    .registers 6

    sget v0, Lcom/google/android/gms/R$color;->common_signin_btn_text_dark:I

    sget v1, Lcom/google/android/gms/R$color;->common_signin_btn_text_light:I

    invoke-direct {p0, p3, v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zzd(III)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/gms/common/internal/zzab;->setTextColor(Landroid/content/res/ColorStateList;)V

    packed-switch p2, :pswitch_data_38

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown button size: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_29
    const/4 p1, 0x0

    goto :goto_34

    :pswitch_2b
    sget p2, Lcom/google/android/gms/R$string;->common_signin_button_text_long:I

    goto :goto_30

    :pswitch_2e
    sget p2, Lcom/google/android/gms/R$string;->common_signin_button_text:I

    :goto_30
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_34
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zzab;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2b
        :pswitch_29
    .end packed-switch
.end method

.method private zzd(III)I
    .registers 5

    packed-switch p1, :pswitch_data_1c

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown color scheme: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_1a
    return p3

    :pswitch_1b
    return p2

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method


# virtual methods
.method public zza(Landroid/content/res/Resources;II)V
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_9

    const/4 v2, 0x3

    if-ge p2, v2, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    const-string v3, "Unknown button size %d"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-ltz p3, :cond_1e

    const/4 v2, 0x2

    if-ge p3, v2, :cond_1e

    move v2, v0

    goto :goto_1f

    :cond_1e
    move v2, v1

    :goto_1f
    const-string v3, "Unknown color scheme %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/zzab;->zza(Landroid/content/res/Resources;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/zzab;->zzb(Landroid/content/res/Resources;II)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/zzab;->zzc(Landroid/content/res/Resources;II)V

    return-void
.end method
