.class final Lgd;
.super Lcs;
.source "PG"


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcs;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final a(Leh;I)Lcq;
    .registers 5

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_1f

    const/16 v1, 0xc27

    if-eq v0, v1, :cond_15

    goto :goto_29

    :cond_15
    const-string v0, "ah"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    const/4 p1, 0x1

    goto :goto_2a

    :cond_1f
    const-string v0, "o"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    const/4 p1, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 p1, -0x1

    :goto_2a
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_4a

    return-object v0

    :pswitch_2f
    const p1, 0x9198308

    if-eq p2, p1, :cond_35

    return-object v0

    :cond_35
    sget-object p1, Ls;->a:Lcq;

    return-object p1

    :pswitch_38
    const p1, 0x9198309

    if-eq p2, p1, :cond_46

    const p1, 0xb706546

    if-eq p2, p1, :cond_43

    return-object v0

    .line 4
    :cond_43
    sget-object p1, Lab;->a:Lcq;

    return-object p1

    .line 5
    :cond_46
    sget-object p1, Lp;->a:Lcq;

    return-object p1

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_38
        :pswitch_2f
    .end packed-switch
.end method
