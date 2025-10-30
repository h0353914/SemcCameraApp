.class Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;
.super Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
.source "LedOptionsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Unsolved"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;)V
    .registers 3

    .line 126
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$1;)V
    .registers 3

    .line 126
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;)V

    return-void
.end method

.method private getResolver(ILjava/util/List;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_65

    .line 174
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_65

    .line 175
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 177
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_ON:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    .line 178
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    .line 179
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    goto :goto_5d

    .line 185
    :cond_3e
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 p2, 0x1

    if-ne p1, p2, :cond_55

    .line 187
    new-instance p1, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashNotSupported;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashNotSupported;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$1;)V

    return-object p1

    .line 190
    :cond_55
    new-instance p1, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$PhotoLightIn;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$PhotoLightIn;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$1;)V

    return-object p1

    .line 181
    :cond_5d
    :goto_5d
    new-instance p1, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashIn;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashIn;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$1;)V

    return-object p1

    :cond_65
    return-object v0
.end method


# virtual methods
.method public getDefaultDisplayFlash()Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;
    .registers 3

    .line 226
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 228
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FLASH:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 229
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    .line 226
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->getResolver(ILjava/util/List;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 231
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    # setter for: Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->access$202(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    .line 232
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    # getter for: Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->access$200(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;->getDefaultDisplayFlash()Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object p0

    return-object p0

    .line 234
    :cond_25
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    return-object p0
.end method

.method public getDefaultFlash()Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .registers 3

    .line 200
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 202
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FLASH:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 203
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    .line 200
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->getResolver(ILjava/util/List;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 205
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    # setter for: Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->access$202(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    .line 206
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    # getter for: Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->access$200(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;->getDefaultFlash()Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object p0

    return-object p0

    .line 208
    :cond_25
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    return-object p0
.end method

.method public getDefaultFrontFlash()Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;
    .registers 3

    .line 213
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 215
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FLASH:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 216
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    .line 213
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->getResolver(ILjava/util/List;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 218
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    # setter for: Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->access$202(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    .line 219
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    # getter for: Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->access$200(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;->getDefaultFrontFlash()Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    move-result-object p0

    return-object p0

    .line 221
    :cond_25
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;->LED_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    return-object p0
.end method

.method public getDisplayFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/ActionMode;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;"
        }
    .end annotation

    .line 155
    iget v0, p1, Lcom/sonyericsson/android/camera/ActionMode;->mType:I

    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->getResolver(ILjava/util/List;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 157
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    # setter for: Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->access$202(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    .line 158
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    # getter for: Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->access$200(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;->getDisplayFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object p0

    return-object p0

    :cond_18
    const/4 p0, 0x0

    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    return-object p0
.end method

.method public getFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/ActionMode;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/sonyericsson/android/camera/configuration/parameters/Flash;"
        }
    .end annotation

    .line 135
    iget v0, p1, Lcom/sonyericsson/android/camera/ActionMode;->mType:I

    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->getResolver(ILjava/util/List;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 137
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    # setter for: Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->access$202(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    .line 138
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    # getter for: Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->access$200(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;->getFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object p0

    return-object p0

    :cond_18
    const/4 p0, 0x0

    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    return-object p0
.end method

.method public getFrontFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/ActionMode;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;"
        }
    .end annotation

    .line 145
    iget v0, p1, Lcom/sonyericsson/android/camera/ActionMode;->mType:I

    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->getResolver(ILjava/util/List;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 147
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    # setter for: Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->access$202(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    .line 148
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    # getter for: Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->access$200(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;->getFrontFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    move-result-object p0

    return-object p0

    :cond_18
    const/4 p0, 0x0

    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    return-object p0
.end method

.method public getParameterKeyTextId()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getParameterKeyTitleTextId()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getPhotoLightOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/ActionMode;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;"
        }
    .end annotation

    .line 165
    iget v0, p1, Lcom/sonyericsson/android/camera/ActionMode;->mType:I

    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->getResolver(ILjava/util/List;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 167
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    # setter for: Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->access$202(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    .line 168
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    # getter for: Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->access$200(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;->getPhotoLightOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object p0

    return-object p0

    :cond_18
    const/4 p0, 0x0

    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    return-object p0
.end method
