.class Lcom/sonymobile/camera/faultdetector/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sonymobile/camera/faultdetector/DetectorInterface;


# instance fields
.field private a:Lcom/sonymobile/camera/faultdetector/Detector;


# direct methods
.method constructor <init>(Landroid/app/Application;Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    const-class v0, Lcom/sonymobile/camera/faultdetector/Detector;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/app/Application;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonymobile/camera/faultdetector/Detector;

    iput-object p1, p0, Lcom/sonymobile/camera/faultdetector/d;->a:Lcom/sonymobile/camera/faultdetector/Detector;
    :try_end_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_27} :catch_37
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_27} :catch_32
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_27} :catch_2d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_27} :catch_28

    goto :goto_3b

    :catch_28
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_3b

    :catch_2d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_3b

    :catch_32
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_3b

    :catch_37
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_3b
    return-void
.end method


# virtual methods
.method public deinitialize()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/d;->a:Lcom/sonymobile/camera/faultdetector/Detector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "deinitialize"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/d;->a:Lcom/sonymobile/camera/faultdetector/Detector;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1a} :catch_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1a} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_29

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_29

    :catch_20
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_29

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_29
    return-void
.end method

.method public execute(Ljava/util/List;Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/d;->a:Lcom/sonymobile/camera/faultdetector/Detector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "executeAsync"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/util/List;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/d;->a:Lcom/sonymobile/camera/faultdetector/Detector;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_27} :catch_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_27} :catch_2d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_36

    :catch_28
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_36

    :catch_2d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_36

    :catch_32
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_36
    return-void
.end method

.method public getInputSize()Landroid/util/Size;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/d;->a:Lcom/sonymobile/camera/faultdetector/Detector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInputSize"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/d;->a:Lcom/sonymobile/camera/faultdetector/Detector;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1d} :catch_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1d} :catch_23
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_2d

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2c

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2c

    :catch_28
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_2c
    const/4 v0, 0x0

    :goto_2d
    return-object v0
.end method

.method public initialize()Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/d;->a:Lcom/sonymobile/camera/faultdetector/Detector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "initialize"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v2, p0, Lcom/sonymobile/camera/faultdetector/d;->a:Lcom/sonymobile/camera/faultdetector/Detector;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_21
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_21} :catch_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_21} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_21} :catch_22

    goto :goto_30

    :catch_22
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_30

    :catch_27
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_30

    :catch_2c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_30
    return v0
.end method

.method public release()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/d;->a:Lcom/sonymobile/camera/faultdetector/Detector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "release"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/d;->a:Lcom/sonymobile/camera/faultdetector/Detector;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1a} :catch_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1a} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_29

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_29

    :catch_20
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_29

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_29
    return-void
.end method
