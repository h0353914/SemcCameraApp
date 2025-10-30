.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;
.super Ljava/lang/Enum;
.source "AspectRatio.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

.field public static final enum FOUR_TO_THREE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

.field public static final enum ONE_TO_ONE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

.field public static final enum SIXTEEN_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

.field public static final TAG:Ljava/lang/String; = "AspectRatio"

.field public static final enum TWENTYONE_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

.field private static final sParameterTextId:I = 0x7f0e00a7


# instance fields
.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 16
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    const-string v1, "SIXTEEN_TO_NINE"

    const/4 v2, 0x0

    const v3, 0x7f0800f6

    const v4, 0x7f0e00a3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->SIXTEEN_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    .line 19
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    const-string v1, "FOUR_TO_THREE"

    const/4 v3, 0x1

    const v4, 0x7f0800f9

    const v5, 0x7f0e00a6

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->FOUR_TO_THREE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    .line 22
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    const-string v1, "ONE_TO_ONE"

    const/4 v4, 0x2

    const v5, 0x7f0800f7

    const v6, 0x7f0e00a4

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->ONE_TO_ONE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    .line 25
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    const-string v1, "TWENTYONE_TO_NINE"

    const/4 v5, 0x3

    const v6, 0x7f0800f8

    const v7, 0x7f0e00a5

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->TWENTYONE_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    const/4 v0, 0x4

    .line 15
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->SIXTEEN_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->FOUR_TO_THREE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->ONE_TO_ONE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->TWENTYONE_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->mIconId:I

    .line 50
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->mTextId:I

    return-void
.end method

.method public static getAspectRatio(II)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_25

    if-nez p1, :cond_6

    goto :goto_25

    :cond_6
    mul-int/lit8 v1, p0, 0x9

    mul-int/lit8 v2, p1, 0x10

    if-ne v1, v2, :cond_f

    .line 187
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->SIXTEEN_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    return-object p0

    :cond_f
    mul-int/lit8 v2, p0, 0x3

    mul-int/lit8 v3, p1, 0x4

    if-ne v2, v3, :cond_18

    .line 189
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->FOUR_TO_THREE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    return-object p0

    :cond_18
    if-ne p0, p1, :cond_1d

    .line 191
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->ONE_TO_ONE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    return-object p0

    :cond_1d
    mul-int/lit8 p1, p1, 0x15

    if-ne v1, p1, :cond_24

    .line 193
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->TWENTYONE_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    return-object p0

    :cond_24
    return-object v0

    :cond_25
    :goto_25
    return-object v0
.end method

.method public static getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;
    .registers 2

    .line 171
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    .line 172
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->getAspectRatio(II)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    move-result-object p0

    return-object p0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;
    .registers 14

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_71

    .line 116
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    .line 117
    array-length v1, p0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_16
    if-ge v3, v1, :cond_55

    aget-object v8, p0, v3

    .line 118
    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 119
    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 120
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->getAspectRatio(II)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    move-result-object v10

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->SIXTEEN_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    const/4 v12, 0x1

    if-ne v10, v11, :cond_35

    move v5, v12

    goto :goto_52

    .line 122
    :cond_35
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->getAspectRatio(II)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    move-result-object v10

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->FOUR_TO_THREE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    if-ne v10, v11, :cond_3f

    move v4, v12

    goto :goto_52

    .line 124
    :cond_3f
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->getAspectRatio(II)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    move-result-object v10

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->ONE_TO_ONE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    if-ne v10, v11, :cond_49

    move v6, v12

    goto :goto_52

    .line 126
    :cond_49
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->getAspectRatio(II)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    move-result-object v8

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->TWENTYONE_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    if-ne v8, v9, :cond_52

    move v7, v12

    :cond_52
    :goto_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_55
    if-eqz v4, :cond_5c

    .line 132
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->FOUR_TO_THREE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5c
    if-eqz v5, :cond_63

    .line 135
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->SIXTEEN_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_63
    if-eqz v6, :cond_6a

    .line 138
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->ONE_TO_ONE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6a
    if-eqz v7, :cond_71

    .line 141
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->TWENTYONE_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_71
    new-array p0, v2, [Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;
    .registers 2

    .line 15
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;
    .registers 1

    .line 15
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 2

    .line 60
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;)V

    return-void
.end method

.method public getIconId()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->mIconId:I

    return v0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 2

    .line 68
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ASPECT_RATIO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object v0
.end method

.method public getKeyTextId()I
    .registers 2

    const v0, 0x7f0e00a7

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .line 88
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 98
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
