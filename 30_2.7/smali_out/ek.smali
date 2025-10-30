.class final Lek;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Les;


# static fields
.field private static final a:[I

.field private static final b:Lsun/misc/Unsafe;


# instance fields
.field private final c:[I

.field private final d:[Ljava/lang/Object;

.field private final e:I

.field private final f:I

.field private final g:Leh;

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:[I

.field private final l:I

.field private final m:I

.field private final n:Ldv;

.field private final o:Lfh;

.field private final p:Lej;

.field private final q:Lfs;

.field private final r:Lff;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [I

    sput-object v0, Lek;->a:[I

    .line 2
    invoke-static {}, Lfr;->a()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lek;->b:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILeh;ZZ[IIILfs;Ldv;Lfh;Lej;Lff;[B)V
    .registers 21

    move-object v0, p0

    move-object/from16 v1, p14

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lek;->c:[I

    move-object v2, p2

    iput-object v2, v0, Lek;->d:[Ljava/lang/Object;

    move v2, p3

    iput v2, v0, Lek;->e:I

    move v2, p4

    iput v2, v0, Lek;->f:I

    move v2, p6

    iput-boolean v2, v0, Lek;->i:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    .line 4
    invoke-static {p5}, Lej;->a(Leh;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v3, 0x1

    goto :goto_21

    :cond_20
    move v3, v2

    :goto_21
    iput-boolean v3, v0, Lek;->h:Z

    iput-boolean v2, v0, Lek;->j:Z

    move-object v2, p8

    iput-object v2, v0, Lek;->k:[I

    move v2, p9

    iput v2, v0, Lek;->l:I

    move v2, p10

    iput v2, v0, Lek;->m:I

    move-object v2, p11

    iput-object v2, v0, Lek;->q:Lfs;

    move-object/from16 v2, p12

    iput-object v2, v0, Lek;->n:Ldv;

    move-object/from16 v2, p13

    iput-object v2, v0, Lek;->o:Lfh;

    iput-object v1, v0, Lek;->p:Lej;

    move-object v1, p5

    iput-object v1, v0, Lek;->g:Leh;

    move-object/from16 v1, p15

    iput-object v1, v0, Lek;->r:Lff;

    return-void
.end method

.method private final a(II)I
    .registers 4

    iget v0, p0, Lek;->e:I

    if-lt p1, v0, :cond_d

    iget v0, p0, Lek;->f:I

    if-gt p1, v0, :cond_d

    .line 1052
    invoke-direct {p0, p1, p2}, Lek;->b(II)I

    move-result p1

    return p1

    :cond_d
    const/4 p1, -0x1

    return p1
.end method

.method private static final a(Lfh;Ljava/lang/Object;)I
    .registers 2

    .line 426
    invoke-virtual {p0, p1}, Lfh;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 427
    invoke-static {p0}, Lfh;->d(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private final a(Ljava/lang/Object;[BIIIIIIIJILby;)I
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    sget-object v12, Lek;->b:Lsun/misc/Unsafe;

    iget-object v7, v0, Lek;->c:[I

    add-int/lit8 v13, v6, 0x2

    .line 747
    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_1d0

    goto/16 :goto_1cd

    :pswitch_28
    const/4 v7, 0x3

    if-ne v5, v7, :cond_1cd

    .line 748
    invoke-direct {v0, v6}, Lek;->a(I)Les;

    move-result-object v5

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v6, v2, 0x4

    move-object v2, v5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p13

    .line 749
    invoke-static/range {v2 .. v7}, Leb;->a(Les;[BIIILby;)I

    move-result v2

    .line 750
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_4b

    .line 751
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_4c

    :cond_4b
    const/4 v15, 0x0

    :goto_4c
    if-eqz v15, :cond_58

    iget-object v3, v11, Lby;->c:Ljava/lang/Object;

    .line 752
    invoke-static {v15, v3}, Ldj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 753
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5d

    .line 755
    :cond_58
    iget-object v3, v11, Lby;->c:Ljava/lang/Object;

    .line 754
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 755
    :goto_5d
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1ce

    :pswitch_62
    if-eqz v5, :cond_66

    goto/16 :goto_1cd

    .line 756
    :cond_66
    invoke-static {v3, v4, v11}, Leb;->b([BILby;)I

    move-result v2

    iget-wide v3, v11, Lby;->b:J

    .line 757
    invoke-static {v3, v4}, Lcl;->a(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 758
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_7b
    if-eqz v5, :cond_7f

    goto/16 :goto_1cd

    .line 759
    :cond_7f
    invoke-static {v3, v4, v11}, Leb;->a([BILby;)I

    move-result v2

    iget v3, v11, Lby;->a:I

    .line 760
    invoke-static {v3}, Lcl;->a(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 761
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_94
    if-nez v5, :cond_1cd

    .line 762
    invoke-static {v3, v4, v11}, Leb;->a([BILby;)I

    move-result v3

    iget v4, v11, Lby;->a:I

    .line 763
    invoke-direct {v0, v6}, Lek;->c(I)Ldh;

    move-result-object v5

    if-eqz v5, :cond_b6

    .line 764
    invoke-interface {v5, v4}, Ldh;->a(I)Z

    move-result v5

    if-eqz v5, :cond_a9

    goto :goto_b6

    .line 767
    :cond_a9
    invoke-static/range {p1 .. p1}, Lek;->c(Ljava/lang/Object;)Lfi;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lfi;->a(ILjava/lang/Object;)V

    goto :goto_c0

    .line 765
    :cond_b6
    :goto_b6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 766
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_c0
    move v2, v3

    goto/16 :goto_1ce

    :pswitch_c3
    if-eq v5, v15, :cond_c7

    goto/16 :goto_1cd

    .line 768
    :cond_c7
    invoke-static {v3, v4, v11}, Leb;->e([BILby;)I

    move-result v2

    iget-object v3, v11, Lby;->c:Ljava/lang/Object;

    .line 769
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 770
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_d4
    if-ne v5, v15, :cond_1cd

    .line 771
    invoke-direct {v0, v6}, Lek;->a(I)Les;

    move-result-object v2

    move/from16 v5, p4

    .line 772
    invoke-static {v2, v3, v4, v5, v11}, Leb;->a(Les;[BIILby;)I

    move-result v2

    .line 773
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_eb

    .line 774
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_ec

    :cond_eb
    const/4 v15, 0x0

    :goto_ec
    if-eqz v15, :cond_f8

    iget-object v3, v11, Lby;->c:Ljava/lang/Object;

    .line 775
    invoke-static {v15, v3}, Ldj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 776
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_fd

    .line 778
    :cond_f8
    iget-object v3, v11, Lby;->c:Ljava/lang/Object;

    .line 777
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 778
    :goto_fd
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1ce

    :pswitch_102
    if-ne v5, v15, :cond_1cd

    .line 779
    invoke-static {v3, v4, v11}, Leb;->a([BILby;)I

    move-result v2

    iget v4, v11, Lby;->a:I

    if-nez v4, :cond_112

    const-string v3, ""

    .line 780
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_12c

    :cond_112
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-nez v5, :cond_119

    goto :goto_121

    :cond_119
    add-int v5, v2, v4

    .line 781
    invoke-static {v3, v2, v5}, Lfx;->a([BII)Z

    move-result v5

    if-eqz v5, :cond_131

    .line 784
    :goto_121
    new-instance v5, Ljava/lang/String;

    .line 782
    sget-object v6, Ldj;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 783
    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    .line 784
    :goto_12c
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1ce

    .line 785
    :cond_131
    invoke-static {}, Ldl;->f()Ldl;

    move-result-object v1

    throw v1

    :pswitch_136
    if-nez v5, :cond_1cd

    .line 786
    invoke-static {v3, v4, v11}, Leb;->b([BILby;)I

    move-result v2

    iget-wide v3, v11, Lby;->b:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_146

    const/4 v15, 0x1

    goto :goto_147

    :cond_146
    const/4 v15, 0x0

    .line 787
    :goto_147
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 788
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_152
    if-eq v5, v7, :cond_156

    goto/16 :goto_1cd

    .line 789
    :cond_156
    invoke-static/range {p2 .. p3}, Leb;->a([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 790
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x4

    return v1

    :pswitch_167
    const/4 v2, 0x1

    if-eq v5, v2, :cond_16b

    goto :goto_1cd

    .line 791
    :cond_16b
    invoke-static/range {p2 .. p3}, Leb;->b([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 792
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x8

    return v1

    :pswitch_17c
    if-eqz v5, :cond_17f

    goto :goto_1cd

    .line 793
    :cond_17f
    invoke-static {v3, v4, v11}, Leb;->a([BILby;)I

    move-result v2

    iget v3, v11, Lby;->a:I

    .line 794
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 795
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_190
    if-eqz v5, :cond_193

    goto :goto_1cd

    .line 796
    :cond_193
    invoke-static {v3, v4, v11}, Leb;->b([BILby;)I

    move-result v2

    iget-wide v3, v11, Lby;->b:J

    .line 797
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 798
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_1a4
    if-eq v5, v7, :cond_1a7

    goto :goto_1cd

    .line 799
    :cond_1a7
    invoke-static/range {p2 .. p3}, Leb;->d([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 800
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x4

    return v1

    :pswitch_1b8
    const/4 v2, 0x1

    if-eq v5, v2, :cond_1bc

    goto :goto_1cd

    .line 801
    :cond_1bc
    invoke-static/range {p2 .. p3}, Leb;->c([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 802
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x8

    return v1

    :cond_1cd
    :goto_1cd
    move v2, v4

    :goto_1ce
    return v2

    nop

    :pswitch_data_1d0
    .packed-switch 0x33
        :pswitch_1b8
        :pswitch_1a4
        :pswitch_190
        :pswitch_190
        :pswitch_17c
        :pswitch_167
        :pswitch_152
        :pswitch_136
        :pswitch_102
        :pswitch_d4
        :pswitch_c3
        :pswitch_17c
        :pswitch_94
        :pswitch_152
        :pswitch_167
        :pswitch_7b
        :pswitch_62
        :pswitch_28
    .end packed-switch
.end method

.method private final a(Ljava/lang/Object;[BIIIIIIJIJLby;)I
    .registers 30

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    sget-object v11, Lek;->b:Lsun/misc/Unsafe;

    .line 943
    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    .line 944
    check-cast v11, Ldi;

    .line 945
    invoke-interface {v11}, Ldi;->a()Z

    move-result v12

    if-nez v12, :cond_34

    .line 946
    invoke-interface {v11}, Ldi;->size()I

    move-result v12

    if-eqz v12, :cond_29

    add-int/2addr v12, v12

    goto :goto_2b

    :cond_29
    const/16 v12, 0xa

    .line 947
    :goto_2b
    invoke-interface {v11, v12}, Ldi;->a(I)Ldi;

    move-result-object v11

    sget-object v12, Lek;->b:Lsun/misc/Unsafe;

    .line 948
    invoke-virtual {v12, v1, v9, v10, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_34
    const/4 v9, 0x5

    const-wide/16 v12, 0x0

    const/4 v10, 0x1

    const/4 v14, 0x2

    packed-switch p11, :pswitch_data_372

    const/4 v1, 0x3

    if-ne v6, v1, :cond_370

    .line 1045
    invoke-direct {p0, v8}, Lek;->a(I)Les;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 1046
    invoke-static/range {p6 .. p11}, Leb;->a(Les;[BIIILby;)I

    move-result v4

    iget-object v8, v7, Lby;->c:Ljava/lang/Object;

    .line 1047
    invoke-interface {v11, v8}, Ldi;->add(Ljava/lang/Object;)Z

    goto/16 :goto_34f

    :pswitch_5e
    if-ne v6, v14, :cond_66

    .line 949
    invoke-static {v3, v4, v11, v7}, Leb;->i([BILdi;Lby;)I

    move-result v1

    goto/16 :goto_371

    :cond_66
    if-nez v6, :cond_370

    .line 950
    check-cast v11, Ldw;

    .line 951
    invoke-static {v3, v4, v7}, Leb;->b([BILby;)I

    move-result v1

    iget-wide v8, v7, Lby;->b:J

    .line 952
    invoke-static {v8, v9}, Lcl;->a(J)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Ldw;->a(J)V

    :goto_77
    if-ge v1, v5, :cond_8f

    .line 953
    invoke-static {v3, v1, v7}, Leb;->a([BILby;)I

    move-result v4

    iget v6, v7, Lby;->a:I

    if-ne v2, v6, :cond_8f

    .line 954
    invoke-static {v3, v4, v7}, Leb;->b([BILby;)I

    move-result v1

    iget-wide v8, v7, Lby;->b:J

    .line 955
    invoke-static {v8, v9}, Lcl;->a(J)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Ldw;->a(J)V

    goto :goto_77

    :cond_8f
    return v1

    :pswitch_90
    if-ne v6, v14, :cond_98

    .line 956
    invoke-static {v3, v4, v11, v7}, Leb;->h([BILdi;Lby;)I

    move-result v1

    goto/16 :goto_371

    :cond_98
    if-nez v6, :cond_370

    .line 957
    check-cast v11, Ldf;

    .line 958
    invoke-static {v3, v4, v7}, Leb;->a([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    .line 959
    invoke-static {v4}, Lcl;->a(I)I

    move-result v4

    invoke-virtual {v11, v4}, Ldf;->c(I)V

    :goto_a9
    if-ge v1, v5, :cond_c1

    .line 960
    invoke-static {v3, v1, v7}, Leb;->a([BILby;)I

    move-result v4

    iget v6, v7, Lby;->a:I

    if-ne v2, v6, :cond_c1

    .line 961
    invoke-static {v3, v4, v7}, Leb;->a([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    .line 962
    invoke-static {v4}, Lcl;->a(I)I

    move-result v4

    invoke-virtual {v11, v4}, Ldf;->c(I)V

    goto :goto_a9

    :cond_c1
    return v1

    :pswitch_c2
    if-ne v6, v14, :cond_c9

    .line 963
    invoke-static {v3, v4, v11, v7}, Leb;->a([BILdi;Lby;)I

    move-result v2

    goto :goto_da

    :cond_c9
    if-nez v6, :cond_370

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v11

    move-object/from16 v7, p14

    .line 964
    invoke-static/range {v2 .. v7}, Leb;->a(I[BIILdi;Lby;)I

    move-result v2

    .line 965
    :goto_da
    check-cast v1, Lde;

    iget-object v3, v1, Lde;->h:Lfi;

    .line 966
    sget-object v4, Lfi;->a:Lfi;

    if-eq v3, v4, :cond_e3

    goto :goto_e4

    :cond_e3
    const/4 v3, 0x0

    .line 967
    :goto_e4
    invoke-direct {p0, v8}, Lek;->c(I)Ldh;

    move-result-object v4

    iget-object v5, v0, Lek;->o:Lfh;

    move/from16 v6, p6

    .line 968
    invoke-static {v6, v11, v4, v3, v5}, Leu;->a(ILjava/util/List;Ldh;Ljava/lang/Object;Lfh;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfi;

    if-nez v3, :cond_f7

    move v1, v2

    goto/16 :goto_371

    :cond_f7
    iput-object v3, v1, Lde;->h:Lfi;

    return v2

    :pswitch_fa
    if-ne v6, v14, :cond_370

    .line 969
    invoke-static {v3, v4, v7}, Leb;->a([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    if-ltz v4, :cond_14f

    .line 971
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_14a

    if-eqz v4, :cond_113

    .line 973
    invoke-static {v3, v1, v4}, Lck;->a([BII)Lck;

    move-result-object v6

    invoke-interface {v11, v6}, Ldi;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v4

    goto :goto_118

    .line 974
    :cond_113
    sget-object v4, Lck;->b:Lck;

    invoke-interface {v11, v4}, Ldi;->add(Ljava/lang/Object;)Z

    :goto_118
    if-ge v1, v5, :cond_149

    .line 975
    invoke-static {v3, v1, v7}, Leb;->a([BILby;)I

    move-result v4

    iget v6, v7, Lby;->a:I

    if-ne v2, v6, :cond_149

    .line 976
    invoke-static {v3, v4, v7}, Leb;->a([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    if-ltz v4, :cond_144

    .line 977
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_13f

    if-eqz v4, :cond_139

    .line 978
    invoke-static {v3, v1, v4}, Lck;->a([BII)Lck;

    move-result-object v6

    invoke-interface {v11, v6}, Ldi;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v4

    goto :goto_118

    :cond_139
    sget-object v4, Lck;->b:Lck;

    .line 979
    invoke-interface {v11, v4}, Ldi;->add(Ljava/lang/Object;)Z

    goto :goto_118

    .line 981
    :cond_13f
    invoke-static {}, Ldl;->a()Ldl;

    move-result-object v1

    throw v1

    .line 980
    :cond_144
    invoke-static {}, Ldl;->b()Ldl;

    move-result-object v1

    throw v1

    :cond_149
    return v1

    .line 972
    :cond_14a
    invoke-static {}, Ldl;->a()Ldl;

    move-result-object v1

    throw v1

    .line 970
    :cond_14f
    invoke-static {}, Ldl;->b()Ldl;

    move-result-object v1

    throw v1

    :pswitch_154
    if-eq v6, v14, :cond_158

    goto/16 :goto_370

    .line 982
    :cond_158
    invoke-direct {p0, v8}, Lek;->a(I)Les;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v11

    move-object/from16 p12, p14

    .line 983
    invoke-static/range {p6 .. p12}, Leb;->a(Les;I[BIILdi;Lby;)I

    move-result v1

    return v1

    :pswitch_16f
    if-ne v6, v14, :cond_370

    const-wide/32 v8, 0x20000000

    and-long v8, p9, v8

    cmp-long v1, v8, v12

    if-eqz v1, :cond_1df

    .line 995
    invoke-static {v3, v4, v7}, Leb;->a([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    if-ltz v4, :cond_1da

    if-nez v4, :cond_18a

    const-string v4, ""

    .line 997
    invoke-interface {v11, v4}, Ldi;->add(Ljava/lang/Object;)Z

    goto :goto_19d

    :cond_18a
    add-int v6, v1, v4

    .line 998
    invoke-static {v3, v1, v6}, Lfx;->a([BII)Z

    move-result v8

    if-eqz v8, :cond_1d5

    .line 999
    new-instance v8, Ljava/lang/String;

    .line 1000
    sget-object v9, Ldj;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v1, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1001
    invoke-interface {v11, v8}, Ldi;->add(Ljava/lang/Object;)Z

    move v1, v6

    :goto_19d
    if-ge v1, v5, :cond_371

    .line 1002
    invoke-static {v3, v1, v7}, Leb;->a([BILby;)I

    move-result v4

    iget v6, v7, Lby;->a:I

    if-ne v2, v6, :cond_371

    .line 1003
    invoke-static {v3, v4, v7}, Leb;->a([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    if-ltz v4, :cond_1d0

    if-nez v4, :cond_1b7

    const-string v4, ""

    .line 1004
    invoke-interface {v11, v4}, Ldi;->add(Ljava/lang/Object;)Z

    goto :goto_19d

    :cond_1b7
    add-int v6, v1, v4

    .line 1005
    invoke-static {v3, v1, v6}, Lfx;->a([BII)Z

    move-result v8

    if-eqz v8, :cond_1cb

    new-instance v8, Ljava/lang/String;

    .line 1006
    sget-object v9, Ldj;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v1, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1007
    invoke-interface {v11, v8}, Ldi;->add(Ljava/lang/Object;)Z

    move v1, v6

    goto :goto_19d

    .line 1009
    :cond_1cb
    invoke-static {}, Ldl;->f()Ldl;

    move-result-object v1

    throw v1

    .line 1008
    :cond_1d0
    invoke-static {}, Ldl;->b()Ldl;

    move-result-object v1

    throw v1

    .line 999
    :cond_1d5
    invoke-static {}, Ldl;->f()Ldl;

    move-result-object v1

    throw v1

    .line 996
    :cond_1da
    invoke-static {}, Ldl;->b()Ldl;

    move-result-object v1

    throw v1

    .line 984
    :cond_1df
    invoke-static {v3, v4, v7}, Leb;->a([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    if-ltz v4, :cond_225

    if-eqz v4, :cond_1f5

    .line 985
    new-instance v6, Ljava/lang/String;

    .line 986
    sget-object v8, Ldj;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v1, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 987
    invoke-interface {v11, v6}, Ldi;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v4

    goto :goto_1fa

    :cond_1f5
    const-string v4, ""

    .line 988
    invoke-interface {v11, v4}, Ldi;->add(Ljava/lang/Object;)Z

    :goto_1fa
    if-ge v1, v5, :cond_371

    .line 989
    invoke-static {v3, v1, v7}, Leb;->a([BILby;)I

    move-result v4

    iget v6, v7, Lby;->a:I

    if-ne v2, v6, :cond_371

    .line 990
    invoke-static {v3, v4, v7}, Leb;->a([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    if-ltz v4, :cond_220

    if-eqz v4, :cond_21a

    .line 994
    new-instance v6, Ljava/lang/String;

    .line 991
    sget-object v8, Ldj;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v1, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 992
    invoke-interface {v11, v6}, Ldi;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v4

    goto :goto_1fa

    :cond_21a
    const-string v4, ""

    .line 993
    invoke-interface {v11, v4}, Ldi;->add(Ljava/lang/Object;)Z

    goto :goto_1fa

    .line 994
    :cond_220
    invoke-static {}, Ldl;->b()Ldl;

    move-result-object v1

    throw v1

    .line 985
    :cond_225
    invoke-static {}, Ldl;->b()Ldl;

    move-result-object v1

    throw v1

    :pswitch_22a
    if-ne v6, v14, :cond_232

    .line 1010
    invoke-static {v3, v4, v11, v7}, Leb;->g([BILdi;Lby;)I

    move-result v1

    goto/16 :goto_371

    :cond_232
    if-nez v6, :cond_370

    .line 1011
    check-cast v11, Lca;

    .line 1012
    invoke-static {v3, v4, v7}, Leb;->b([BILby;)I

    move-result v1

    iget-wide v8, v7, Lby;->b:J

    cmp-long v4, v8, v12

    const/4 v6, 0x0

    if-eqz v4, :cond_243

    move v4, v10

    goto :goto_244

    :cond_243
    move v4, v6

    .line 1013
    :goto_244
    invoke-virtual {v11, v4}, Lca;->a(Z)V

    :goto_247
    if-ge v1, v5, :cond_262

    .line 1014
    invoke-static {v3, v1, v7}, Leb;->a([BILby;)I

    move-result v4

    iget v8, v7, Lby;->a:I

    if-ne v2, v8, :cond_262

    .line 1015
    invoke-static {v3, v4, v7}, Leb;->b([BILby;)I

    move-result v1

    iget-wide v8, v7, Lby;->b:J

    cmp-long v4, v8, v12

    if-eqz v4, :cond_25d

    move v4, v10

    goto :goto_25e

    :cond_25d
    move v4, v6

    .line 1016
    :goto_25e
    invoke-virtual {v11, v4}, Lca;->a(Z)V

    goto :goto_247

    :cond_262
    return v1

    :pswitch_263
    if-ne v6, v14, :cond_26b

    .line 1017
    invoke-static {v3, v4, v11, v7}, Leb;->c([BILdi;Lby;)I

    move-result v1

    goto/16 :goto_371

    :cond_26b
    if-ne v6, v9, :cond_370

    .line 1018
    check-cast v11, Ldf;

    .line 1019
    invoke-static/range {p2 .. p3}, Leb;->a([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Ldf;->c(I)V

    add-int/lit8 v1, v4, 0x4

    :goto_278
    if-ge v1, v5, :cond_28c

    .line 1020
    invoke-static {v3, v1, v7}, Leb;->a([BILby;)I

    move-result v4

    iget v6, v7, Lby;->a:I

    if-ne v2, v6, :cond_28c

    .line 1021
    invoke-static {v3, v4}, Leb;->a([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Ldf;->c(I)V

    add-int/lit8 v1, v4, 0x4

    goto :goto_278

    :cond_28c
    return v1

    :pswitch_28d
    if-ne v6, v14, :cond_295

    .line 1022
    invoke-static {v3, v4, v11, v7}, Leb;->d([BILdi;Lby;)I

    move-result v1

    goto/16 :goto_371

    :cond_295
    if-ne v6, v10, :cond_370

    .line 1023
    check-cast v11, Ldw;

    .line 1024
    invoke-static/range {p2 .. p3}, Leb;->b([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Ldw;->a(J)V

    add-int/lit8 v1, v4, 0x8

    :goto_2a2
    if-ge v1, v5, :cond_2b6

    .line 1025
    invoke-static {v3, v1, v7}, Leb;->a([BILby;)I

    move-result v4

    iget v6, v7, Lby;->a:I

    if-ne v2, v6, :cond_2b6

    .line 1026
    invoke-static {v3, v4}, Leb;->b([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Ldw;->a(J)V

    add-int/lit8 v1, v4, 0x8

    goto :goto_2a2

    :cond_2b6
    return v1

    :pswitch_2b7
    if-ne v6, v14, :cond_2bf

    .line 1027
    invoke-static {v3, v4, v11, v7}, Leb;->a([BILdi;Lby;)I

    move-result v1

    goto/16 :goto_371

    :cond_2bf
    if-eqz v6, :cond_2c3

    goto/16 :goto_370

    :cond_2c3
    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v11

    move-object/from16 p10, p14

    .line 1028
    invoke-static/range {p5 .. p10}, Leb;->a(I[BIILdi;Lby;)I

    move-result v1

    return v1

    :pswitch_2d2
    if-ne v6, v14, :cond_2da

    .line 1029
    invoke-static {v3, v4, v11, v7}, Leb;->b([BILdi;Lby;)I

    move-result v1

    goto/16 :goto_371

    :cond_2da
    if-nez v6, :cond_370

    .line 1030
    check-cast v11, Ldw;

    .line 1031
    invoke-static {v3, v4, v7}, Leb;->b([BILby;)I

    move-result v1

    iget-wide v8, v7, Lby;->b:J

    .line 1032
    invoke-virtual {v11, v8, v9}, Ldw;->a(J)V

    :goto_2e7
    if-ge v1, v5, :cond_2fb

    .line 1033
    invoke-static {v3, v1, v7}, Leb;->a([BILby;)I

    move-result v4

    iget v6, v7, Lby;->a:I

    if-ne v2, v6, :cond_2fb

    .line 1034
    invoke-static {v3, v4, v7}, Leb;->b([BILby;)I

    move-result v1

    iget-wide v8, v7, Lby;->b:J

    .line 1035
    invoke-virtual {v11, v8, v9}, Ldw;->a(J)V

    goto :goto_2e7

    :cond_2fb
    return v1

    :pswitch_2fc
    if-ne v6, v14, :cond_304

    .line 1036
    invoke-static {v3, v4, v11, v7}, Leb;->e([BILdi;Lby;)I

    move-result v1

    goto/16 :goto_371

    :cond_304
    if-ne v6, v9, :cond_370

    .line 1037
    check-cast v11, Lcx;

    .line 1038
    invoke-static/range {p2 .. p3}, Leb;->d([BI)F

    move-result v1

    invoke-virtual {v11, v1}, Lcx;->a(F)V

    add-int/lit8 v1, v4, 0x4

    :goto_311
    if-ge v1, v5, :cond_325

    .line 1039
    invoke-static {v3, v1, v7}, Leb;->a([BILby;)I

    move-result v4

    iget v6, v7, Lby;->a:I

    if-ne v2, v6, :cond_325

    .line 944
    invoke-static {v3, v4}, Leb;->d([BI)F

    move-result v1

    invoke-virtual {v11, v1}, Lcx;->a(F)V

    add-int/lit8 v1, v4, 0x4

    goto :goto_311

    :cond_325
    return v1

    :pswitch_326
    if-ne v6, v14, :cond_32d

    .line 1040
    invoke-static {v3, v4, v11, v7}, Leb;->f([BILdi;Lby;)I

    move-result v1

    goto :goto_371

    :cond_32d
    if-ne v6, v10, :cond_370

    .line 1041
    check-cast v11, Lcp;

    .line 1042
    invoke-static/range {p2 .. p3}, Leb;->c([BI)D

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcp;->a(D)V

    add-int/lit8 v1, v4, 0x8

    :goto_33a
    if-ge v1, v5, :cond_34e

    .line 1043
    invoke-static {v3, v1, v7}, Leb;->a([BILby;)I

    move-result v4

    iget v6, v7, Lby;->a:I

    if-ne v2, v6, :cond_34e

    .line 1044
    invoke-static {v3, v4}, Leb;->c([BI)D

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcp;->a(D)V

    add-int/lit8 v1, v4, 0x8

    goto :goto_33a

    :cond_34e
    return v1

    :goto_34f
    if-ge v4, v5, :cond_36f

    .line 1048
    invoke-static {v3, v4, v7}, Leb;->a([BILby;)I

    move-result v8

    iget v9, v7, Lby;->a:I

    if-ne v2, v9, :cond_36f

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 1049
    invoke-static/range {p6 .. p11}, Leb;->a(Les;[BIIILby;)I

    move-result v4

    iget-object v8, v7, Lby;->c:Ljava/lang/Object;

    .line 1050
    invoke-interface {v11, v8}, Ldi;->add(Ljava/lang/Object;)Z

    goto :goto_34f

    :cond_36f
    return v4

    :cond_370
    :goto_370
    move v1, v4

    :cond_371
    :goto_371
    return v1

    :pswitch_data_372
    .packed-switch 0x12
        :pswitch_326
        :pswitch_2fc
        :pswitch_2d2
        :pswitch_2d2
        :pswitch_2b7
        :pswitch_28d
        :pswitch_263
        :pswitch_22a
        :pswitch_16f
        :pswitch_154
        :pswitch_fa
        :pswitch_2b7
        :pswitch_c2
        :pswitch_263
        :pswitch_28d
        :pswitch_90
        :pswitch_5e
        :pswitch_326
        :pswitch_2fc
        :pswitch_2d2
        :pswitch_2d2
        :pswitch_2b7
        :pswitch_28d
        :pswitch_263
        :pswitch_22a
        :pswitch_2b7
        :pswitch_c2
        :pswitch_263
        :pswitch_28d
        :pswitch_90
        :pswitch_5e
    .end packed-switch
.end method

.method private final a(Ljava/lang/Object;[BIIIJLby;)I
    .registers 12

    sget-object v0, Lek;->b:Lsun/misc/Unsafe;

    .line 728
    invoke-direct {p0, p5}, Lek;->b(I)Ljava/lang/Object;

    move-result-object p5

    .line 729
    invoke-virtual {v0, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 730
    invoke-static {v1}, Lff;->d(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 731
    invoke-static {}, Lff;->a()Ljava/lang/Object;

    move-result-object v2

    .line 732
    invoke-static {v2, v1}, Lff;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    invoke-virtual {v0, p1, p6, p7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v2

    .line 734
    :cond_1b
    invoke-static {p5}, Lff;->b(Ljava/lang/Object;)Lea;

    move-result-object p1

    .line 735
    invoke-static {v1}, Lff;->c(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p5

    .line 736
    invoke-static {p2, p3, p8}, Leb;->a([BILby;)I

    move-result p3

    iget p6, p8, Lby;->a:I

    if-ltz p6, :cond_5e

    sub-int p7, p4, p3

    if-gt p6, p7, :cond_5e

    add-int/2addr p6, p3

    .line 738
    iget-object p7, p1, Lea;->b:Ljava/lang/Object;

    .line 739
    iget-object p7, p1, Lea;->d:Ljava/lang/Object;

    :goto_34
    const/4 p7, 0x0

    if-ge p3, p6, :cond_53

    add-int/lit8 v0, p3, 0x1

    .line 740
    aget-byte p3, p2, p3

    if-gez p3, :cond_43

    .line 741
    invoke-static {p3, p2, v0, p8}, Leb;->a(I[BILby;)I

    move-result v0

    iget p3, p8, Lby;->a:I

    :cond_43
    ushr-int/lit8 v1, p3, 0x3

    packed-switch v1, :pswitch_data_64

    .line 742
    invoke-static {p3, p2, v0, p4, p8}, Leb;->a(I[BIILby;)I

    move-result p3

    goto :goto_34

    .line 743
    :pswitch_4d
    iget-object p1, p1, Lea;->c:Lfy;

    throw p7

    .line 744
    :pswitch_50
    iget-object p1, p1, Lea;->a:Lfy;

    throw p7

    :cond_53
    if-ne p3, p6, :cond_59

    .line 745
    invoke-interface {p5, p7, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p6

    .line 746
    :cond_59
    invoke-static {}, Ldl;->e()Ldl;

    move-result-object p1

    throw p1

    .line 737
    :cond_5e
    invoke-static {}, Ldl;->a()Ldl;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_50
        :pswitch_4d
    .end packed-switch
.end method

.method static a(Lee;Lfs;Ldv;Lfh;Lej;Lff;)Lek;
    .registers 13

    .line 651
    instance-of v0, p0, Ler;

    if-eqz v0, :cond_11

    .line 653
    move-object v1, p0

    check-cast v1, Ler;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lek;->a(Ler;Lfs;Ldv;Lfh;Lej;Lff;)Lek;

    move-result-object p0

    return-object p0

    .line 652
    :cond_11
    check-cast p0, Lfd;

    const/4 p0, 0x0

    throw p0
.end method

.method static a(Ler;Lfs;Ldv;Lfh;Lej;Lff;)Lek;
    .registers 42

    move-object/from16 v0, p0

    .line 654
    invoke-virtual/range {p0 .. p0}, Ler;->c()I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_c

    const/4 v11, 0x1

    goto :goto_d

    :cond_c
    move v11, v2

    :goto_d
    iget-object v1, v0, Ler;->b:Ljava/lang/String;

    .line 655
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 656
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-ge v5, v6, :cond_1e

    const/4 v7, 0x1

    goto :goto_27

    :cond_1e
    const/4 v5, 0x1

    :goto_1f
    add-int/lit8 v7, v5, 0x1

    .line 657
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ge v5, v6, :cond_41c

    :goto_27
    add-int/lit8 v5, v7, 0x1

    .line 658
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_46

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_33
    add-int/lit8 v10, v5, 0x1

    .line 659
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_43

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_33

    :cond_43
    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    goto :goto_47

    :cond_46
    move v10, v5

    :goto_47
    if-nez v7, :cond_58

    sget-object v5, Lek;->a:[I

    move v7, v2

    move v9, v7

    move v13, v9

    move v14, v13

    move/from16 v16, v14

    move/from16 v17, v16

    move-object v15, v5

    move/from16 v5, v17

    goto/16 :goto_185

    :cond_58
    add-int/lit8 v5, v10, 0x1

    .line 660
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_77

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_64
    add-int/lit8 v10, v5, 0x1

    .line 661
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_74

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_64

    :cond_74
    shl-int/2addr v5, v9

    or-int/2addr v5, v7

    goto :goto_79

    :cond_77
    move v10, v5

    move v5, v7

    :goto_79
    add-int/lit8 v7, v10, 0x1

    .line 662
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_98

    and-int/lit16 v9, v9, 0x1fff

    const/16 v10, 0xd

    :goto_85
    add-int/lit8 v12, v7, 0x1

    .line 663
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_95

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v10

    or-int/2addr v9, v7

    add-int/lit8 v10, v10, 0xd

    move v7, v12

    goto :goto_85

    :cond_95
    shl-int/2addr v7, v10

    or-int/2addr v9, v7

    goto :goto_99

    :cond_98
    move v12, v7

    :goto_99
    add-int/lit8 v7, v12, 0x1

    .line 664
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_b9

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_a5
    add-int/lit8 v13, v7, 0x1

    .line 665
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_b5

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v12

    or-int/2addr v10, v7

    add-int/lit8 v12, v12, 0xd

    move v7, v13

    goto :goto_a5

    :cond_b5
    shl-int/2addr v7, v12

    or-int/2addr v7, v10

    move v10, v7

    goto :goto_ba

    :cond_b9
    move v13, v7

    :goto_ba
    add-int/lit8 v7, v13, 0x1

    .line 666
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_da

    and-int/lit16 v12, v12, 0x1fff

    const/16 v13, 0xd

    :goto_c6
    add-int/lit8 v14, v7, 0x1

    .line 667
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_d6

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v13

    or-int/2addr v12, v7

    add-int/lit8 v13, v13, 0xd

    move v7, v14

    goto :goto_c6

    :cond_d6
    shl-int/2addr v7, v13

    or-int/2addr v7, v12

    move v12, v7

    goto :goto_db

    :cond_da
    move v14, v7

    :goto_db
    add-int/lit8 v7, v14, 0x1

    .line 668
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_fb

    and-int/lit16 v13, v13, 0x1fff

    const/16 v14, 0xd

    :goto_e7
    add-int/lit8 v15, v7, 0x1

    .line 669
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_f7

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v14

    or-int/2addr v13, v7

    add-int/lit8 v14, v14, 0xd

    move v7, v15

    goto :goto_e7

    :cond_f7
    shl-int/2addr v7, v14

    or-int/2addr v7, v13

    move v13, v7

    goto :goto_fc

    :cond_fb
    move v15, v7

    :goto_fc
    add-int/lit8 v7, v15, 0x1

    .line 670
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_11e

    and-int/lit16 v14, v14, 0x1fff

    const/16 v15, 0xd

    :goto_108
    add-int/lit8 v16, v7, 0x1

    .line 671
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_119

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v15

    or-int/2addr v14, v7

    add-int/lit8 v15, v15, 0xd

    move/from16 v7, v16

    goto :goto_108

    :cond_119
    shl-int/2addr v7, v15

    or-int/2addr v7, v14

    move v14, v7

    move/from16 v7, v16

    :cond_11e
    add-int/lit8 v15, v7, 0x1

    .line 672
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_141

    and-int/lit16 v7, v7, 0x1fff

    const/16 v16, 0xd

    :goto_12a
    add-int/lit8 v17, v15, 0x1

    .line 673
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_13c

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v7, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_12a

    :cond_13c
    shl-int v15, v15, v16

    or-int/2addr v7, v15

    move/from16 v15, v17

    :cond_141
    add-int/lit8 v16, v15, 0x1

    .line 674
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_16c

    and-int/lit16 v15, v15, 0x1fff

    const/16 v17, 0xd

    move/from16 v34, v16

    move/from16 v16, v15

    move/from16 v15, v34

    :goto_153
    add-int/lit8 v18, v15, 0x1

    .line 675
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_166

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v17

    or-int v16, v16, v15

    add-int/lit8 v17, v17, 0xd

    move/from16 v15, v18

    goto :goto_153

    :cond_166
    shl-int v15, v15, v17

    or-int v15, v16, v15

    move/from16 v16, v18

    :cond_16c
    add-int v17, v15, v14

    add-int v7, v17, v7

    .line 676
    new-array v7, v7, [I

    add-int v17, v5, v5

    add-int v9, v17, v9

    move/from16 v17, v12

    move-object/from16 v34, v7

    move v7, v5

    move v5, v14

    move v14, v15

    move-object/from16 v15, v34

    move/from16 v35, v16

    move/from16 v16, v10

    move/from16 v10, v35

    .line 659
    :goto_185
    sget-object v12, Lek;->b:Lsun/misc/Unsafe;

    iget-object v2, v0, Ler;->c:[Ljava/lang/Object;

    iget-object v8, v0, Ler;->a:Leh;

    .line 677
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    mul-int/lit8 v3, v13, 0x3

    .line 678
    new-array v3, v3, [I

    add-int/2addr v13, v13

    .line 679
    new-array v13, v13, [Ljava/lang/Object;

    add-int v22, v14, v5

    move/from16 v21, v9

    move/from16 v23, v14

    move/from16 v24, v22

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_1a0
    if-ge v10, v4, :cond_3f8

    add-int/lit8 v25, v10, 0x1

    .line 680
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_1d0

    and-int/lit16 v10, v10, 0x1fff

    const/16 v26, 0xd

    move/from16 v34, v25

    move/from16 v25, v10

    move/from16 v10, v34

    :goto_1b4
    add-int/lit8 v27, v10, 0x1

    .line 681
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_1c7

    and-int/lit16 v10, v10, 0x1fff

    shl-int v10, v10, v26

    or-int v25, v25, v10

    add-int/lit8 v26, v26, 0xd

    move/from16 v10, v27

    goto :goto_1b4

    :cond_1c7
    shl-int v10, v10, v26

    or-int v10, v25, v10

    move/from16 v25, v10

    move/from16 v10, v27

    goto :goto_1d6

    :cond_1d0
    move/from16 v34, v25

    move/from16 v25, v10

    move/from16 v10, v34

    :goto_1d6
    add-int/lit8 v26, v10, 0x1

    .line 682
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_202

    and-int/lit16 v10, v10, 0x1fff

    const/16 v27, 0xd

    move/from16 v34, v26

    move/from16 v26, v10

    move/from16 v10, v34

    :goto_1e8
    add-int/lit8 v28, v10, 0x1

    .line 683
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_1fb

    and-int/lit16 v10, v10, 0x1fff

    shl-int v10, v10, v27

    or-int v26, v26, v10

    add-int/lit8 v27, v27, 0xd

    move/from16 v10, v28

    goto :goto_1e8

    :cond_1fb
    shl-int v10, v10, v27

    or-int v10, v26, v10

    move/from16 v6, v28

    goto :goto_204

    :cond_202
    move/from16 v6, v26

    :goto_204
    move/from16 v27, v4

    and-int/lit16 v4, v10, 0xff

    move/from16 v28, v14

    and-int/lit16 v14, v10, 0x400

    if-eqz v14, :cond_213

    add-int/lit8 v14, v5, 0x1

    .line 684
    aput v9, v15, v5

    move v5, v14

    :cond_213
    const/16 v14, 0x33

    if-ge v4, v14, :cond_32b

    add-int/lit8 v14, v21, 0x1

    .line 685
    aget-object v21, v2, v21

    move/from16 v29, v5

    move-object/from16 v5, v21

    check-cast v5, Ljava/lang/String;

    invoke-static {v8, v5}, Lek;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/16 v0, 0x9

    if-ne v4, v0, :cond_22d

    const/16 v20, 0x1

    goto/16 :goto_295

    :cond_22d
    const/16 v0, 0x11

    if-eq v4, v0, :cond_293

    const/16 v0, 0x1b

    if-ne v4, v0, :cond_238

    const/16 v20, 0x1

    goto :goto_286

    :cond_238
    const/16 v0, 0x31

    if-eq v4, v0, :cond_284

    const/16 v0, 0xc

    if-eq v4, v0, :cond_270

    const/16 v0, 0x1e

    if-eq v4, v0, :cond_270

    const/16 v0, 0x2c

    if-eq v4, v0, :cond_270

    const/16 v0, 0x32

    if-ne v4, v0, :cond_2a0

    add-int/lit8 v0, v23, 0x1

    .line 689
    aput v9, v15, v23

    div-int/lit8 v23, v9, 0x3

    add-int/lit8 v30, v14, 0x1

    add-int v23, v23, v23

    .line 690
    aget-object v14, v2, v14

    aput-object v14, v13, v23

    and-int/lit16 v14, v10, 0x800

    if-eqz v14, :cond_26c

    add-int/lit8 v14, v30, 0x1

    add-int/lit8 v23, v23, 0x1

    .line 691
    aget-object v30, v2, v30

    aput-object v30, v13, v23

    move/from16 v23, v0

    move-object v0, v13

    move/from16 v30, v14

    goto :goto_2a3

    :cond_26c
    move/from16 v23, v0

    move-object v0, v13

    goto :goto_2a3

    :cond_270
    if-nez v11, :cond_281

    div-int/lit8 v0, v9, 0x3

    add-int/lit8 v30, v14, 0x1

    add-int/2addr v0, v0

    const/16 v20, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 688
    aget-object v14, v2, v14

    aput-object v14, v13, v0

    move-object v0, v13

    goto :goto_2a3

    :cond_281
    const/16 v20, 0x1

    goto :goto_2a0

    :cond_284
    const/16 v20, 0x1

    .line 699
    :goto_286
    div-int/lit8 v0, v9, 0x3

    add-int/lit8 v30, v14, 0x1

    add-int/2addr v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 687
    aget-object v14, v2, v14

    aput-object v14, v13, v0

    move-object v0, v13

    goto :goto_2a3

    :cond_293
    const/16 v20, 0x1

    .line 685
    :goto_295
    div-int/lit8 v0, v9, 0x3

    add-int/2addr v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 686
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v30

    aput-object v30, v13, v0

    :cond_2a0
    :goto_2a0
    move-object v0, v13

    move/from16 v30, v14

    .line 692
    :goto_2a3
    invoke-virtual {v12, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v5, v13

    and-int/lit16 v13, v10, 0x1000

    const/16 v14, 0x1000

    if-eq v13, v14, :cond_2b5

    move/from16 v33, v7

    const/4 v7, 0x0

    const v31, 0xfffff

    goto :goto_310

    :cond_2b5
    const/16 v13, 0x11

    if-gt v4, v13, :cond_30a

    add-int/lit8 v13, v6, 0x1

    .line 693
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v14, 0xd800

    if-lt v6, v14, :cond_2e2

    and-int/lit16 v6, v6, 0x1fff

    const/16 v31, 0xd

    :goto_2c8
    add-int/lit8 v32, v13, 0x1

    .line 694
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v14, :cond_2dd

    and-int/lit16 v13, v13, 0x1fff

    shl-int v13, v13, v31

    or-int/2addr v6, v13

    add-int/lit8 v31, v31, 0xd

    move/from16 v13, v32

    const v14, 0xd800

    goto :goto_2c8

    :cond_2dd
    shl-int v13, v13, v31

    or-int/2addr v6, v13

    move/from16 v13, v32

    :cond_2e2
    add-int v14, v7, v7

    div-int/lit8 v31, v6, 0x20

    add-int v14, v14, v31

    move/from16 v33, v7

    .line 695
    aget-object v7, v2, v14

    move/from16 v31, v13

    .line 696
    instance-of v13, v7, Ljava/lang/reflect/Field;

    if-eqz v13, :cond_2f5

    .line 697
    check-cast v7, Ljava/lang/reflect/Field;

    goto :goto_2fd

    .line 698
    :cond_2f5
    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v7}, Lek;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 699
    aput-object v7, v2, v14

    .line 700
    :goto_2fd
    invoke-virtual {v12, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v14, v13

    rem-int/lit8 v6, v6, 0x20

    move v7, v6

    move/from16 v6, v31

    move/from16 v31, v14

    goto :goto_310

    :cond_30a
    move/from16 v33, v7

    const/4 v7, 0x0

    const v31, 0xfffff

    :goto_310
    const/16 v13, 0x12

    if-ge v4, v13, :cond_315

    goto :goto_325

    :cond_315
    const/16 v13, 0x31

    if-gt v4, v13, :cond_325

    add-int/lit8 v13, v24, 0x1

    .line 701
    aput v5, v15, v24

    move/from16 v24, v13

    move/from16 v21, v30

    const/16 v20, 0x1

    goto/16 :goto_3c1

    :cond_325
    :goto_325
    move/from16 v21, v30

    const/16 v20, 0x1

    goto/16 :goto_3c1

    :cond_32b
    move/from16 v29, v5

    move/from16 v33, v7

    move-object v0, v13

    add-int/lit8 v5, v6, 0x1

    .line 702
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v13, 0xd800

    if-lt v6, v13, :cond_352

    and-int/lit16 v6, v6, 0x1fff

    const/16 v7, 0xd

    :goto_33f
    add-int/lit8 v14, v5, 0x1

    .line 703
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v13, :cond_34f

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v7

    or-int/2addr v6, v5

    add-int/lit8 v7, v7, 0xd

    move v5, v14

    goto :goto_33f

    :cond_34f
    shl-int/2addr v5, v7

    or-int/2addr v6, v5

    goto :goto_353

    :cond_352
    move v14, v5

    :goto_353
    add-int/lit8 v5, v4, -0x33

    const/16 v7, 0x9

    if-ne v5, v7, :cond_35a

    goto :goto_37a

    :cond_35a
    const/16 v7, 0x11

    if-eq v5, v7, :cond_37a

    const/16 v7, 0xc

    if-eq v5, v7, :cond_363

    goto :goto_375

    :cond_363
    if-nez v11, :cond_375

    .line 710
    div-int/lit8 v5, v9, 0x3

    add-int/lit8 v7, v21, 0x1

    add-int/2addr v5, v5

    const/16 v20, 0x1

    add-int/lit8 v5, v5, 0x1

    .line 705
    aget-object v21, v2, v21

    aput-object v21, v0, v5

    const/16 v20, 0x1

    goto :goto_387

    :cond_375
    :goto_375
    move/from16 v7, v21

    const/16 v20, 0x1

    goto :goto_387

    .line 703
    :cond_37a
    :goto_37a
    div-int/lit8 v5, v9, 0x3

    add-int/lit8 v7, v21, 0x1

    add-int/2addr v5, v5

    const/16 v20, 0x1

    add-int/lit8 v5, v5, 0x1

    .line 704
    aget-object v21, v2, v21

    aput-object v21, v0, v5

    :goto_387
    add-int/2addr v6, v6

    .line 706
    aget-object v5, v2, v6

    .line 707
    instance-of v13, v5, Ljava/lang/reflect/Field;

    if-eqz v13, :cond_393

    .line 708
    check-cast v5, Ljava/lang/reflect/Field;

    move/from16 v21, v14

    goto :goto_39d

    .line 709
    :cond_393
    check-cast v5, Ljava/lang/String;

    invoke-static {v8, v5}, Lek;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 710
    aput-object v5, v2, v6

    move/from16 v21, v14

    .line 711
    :goto_39d
    invoke-virtual {v12, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v5, v13

    add-int/lit8 v6, v6, 0x1

    .line 712
    aget-object v13, v2, v6

    .line 713
    instance-of v14, v13, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_3ad

    .line 714
    check-cast v13, Ljava/lang/reflect/Field;

    goto :goto_3b5

    .line 715
    :cond_3ad
    check-cast v13, Ljava/lang/String;

    invoke-static {v8, v13}, Lek;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 716
    aput-object v13, v2, v6

    .line 717
    :goto_3b5
    invoke-virtual {v12, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v6, v13

    move/from16 v31, v6

    move/from16 v6, v21

    move/from16 v21, v7

    const/4 v7, 0x0

    :goto_3c1
    add-int/lit8 v13, v9, 0x1

    .line 718
    aput v25, v3, v9

    add-int/lit8 v9, v13, 0x1

    and-int/lit16 v14, v10, 0x200

    if-eqz v14, :cond_3ce

    const/high16 v14, 0x20000000

    goto :goto_3cf

    :cond_3ce
    const/4 v14, 0x0

    :goto_3cf
    and-int/lit16 v10, v10, 0x100

    if-eqz v10, :cond_3d6

    const/high16 v10, 0x10000000

    goto :goto_3d7

    :cond_3d6
    const/4 v10, 0x0

    :goto_3d7
    or-int/2addr v10, v14

    shl-int/lit8 v4, v4, 0x14

    or-int/2addr v4, v10

    or-int/2addr v4, v5

    .line 719
    aput v4, v3, v13

    add-int/lit8 v4, v9, 0x1

    shl-int/lit8 v5, v7, 0x14

    or-int v5, v5, v31

    .line 720
    aput v5, v3, v9

    move-object v13, v0

    move v9, v4

    move v10, v6

    move/from16 v4, v27

    move/from16 v14, v28

    move/from16 v5, v29

    move/from16 v7, v33

    move-object/from16 v0, p0

    const v6, 0xd800

    goto/16 :goto_1a0

    :cond_3f8
    move-object v0, v13

    move/from16 v28, v14

    .line 705
    new-instance v1, Lek;

    move-object v5, v1

    move-object/from16 v2, p0

    iget-object v10, v2, Ler;->a:Leh;

    const/4 v12, 0x0

    const/16 v21, 0x0

    move-object v6, v3

    move-object v7, v0

    move/from16 v8, v16

    move/from16 v9, v17

    move-object v13, v15

    move/from16 v15, v22

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    .line 721
    invoke-direct/range {v5 .. v21}, Lek;-><init>([I[Ljava/lang/Object;IILeh;ZZ[IIILfs;Ldv;Lfh;Lej;Lff;[B)V

    return-object v1

    :cond_41c
    move v5, v7

    goto/16 :goto_1f
.end method

.method private final a(I)Les;
    .registers 5

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lek;->d:[Ljava/lang/Object;

    .line 68
    aget-object v0, v0, p1

    check-cast v0, Les;

    if-nez v0, :cond_1d

    .line 69
    sget-object v0, Lep;->a:Lep;

    iget-object v1, p0, Lek;->d:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lep;->a(Ljava/lang/Class;)Les;

    move-result-object v0

    iget-object v1, p0, Lek;->d:[Ljava/lang/Object;

    .line 70
    aput-object v0, v1, p1

    :cond_1d
    return-object v0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 8

    .line 1054
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 1055
    :catch_5
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1056
    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    .line 1057
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1c
    return-object v3

    :cond_1d
    new-instance v1, Ljava/lang/RuntimeException;

    .line 1058
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 1059
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x28

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(Ljava/lang/Object;J)Ljava/util/List;
    .registers 3

    .line 552
    invoke-static {p0, p1, p2}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final a(ILjava/lang/Object;Lgb;)V
    .registers 4

    .line 1220
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1221
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lgb;->a(ILjava/lang/String;)V

    return-void

    .line 1222
    :cond_a
    check-cast p1, Lck;

    invoke-interface {p2, p0, p1}, Lgb;->a(ILck;)V

    return-void
.end method

.method private static final a(Lfh;Ljava/lang/Object;Lgb;)V
    .registers 3

    .line 1430
    invoke-virtual {p0, p1}, Lfh;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p2}, Lfh;->b(Ljava/lang/Object;Lgb;)V

    return-void
.end method

.method private final a(Lgb;ILjava/lang/Object;I)V
    .registers 10

    if-eqz p3, :cond_4a

    .line 1213
    invoke-direct {p0, p4}, Lek;->b(I)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lff;->b(Ljava/lang/Object;)Lea;

    move-result-object p4

    .line 1214
    invoke-static {p3}, Lff;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    .line 1215
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_16
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, p1

    check-cast v1, Lco;

    iget-object v2, v1, Lco;->a:Lcn;

    const/4 v3, 0x2

    .line 1216
    invoke-virtual {v2, p2, v3}, Lcn;->f(II)V

    iget-object v2, v1, Lco;->a:Lcn;

    .line 1217
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p4, v3, v4}, Leb;->a(Lea;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 1218
    invoke-virtual {v2, v3}, Lcn;->h(I)V

    iget-object v1, v1, Lco;->a:Lcn;

    .line 1219
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, p4, v2, v0}, Leb;->a(Lcn;Lea;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_16

    :cond_4a
    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 7

    .line 629
    invoke-direct {p0, p3}, Lek;->e(I)I

    move-result v0

    .line 630
    invoke-static {v0}, Lek;->h(I)J

    move-result-wide v0

    .line 631
    invoke-direct {p0, p2, p3}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 632
    invoke-static {p1, v0, v1}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 633
    invoke-static {p2, v0, v1}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_26

    if-nez p2, :cond_1b

    goto :goto_26

    .line 636
    :cond_1b
    invoke-static {v2, p2}, Ldj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 637
    invoke-static {p1, v0, v1, p2}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 638
    invoke-direct {p0, p1, p3}, Lek;->b(Ljava/lang/Object;I)V

    return-void

    :cond_26
    :goto_26
    if-eqz p2, :cond_2e

    .line 634
    invoke-static {p1, v0, v1, p2}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 635
    invoke-direct {p0, p1, p3}, Lek;->b(Ljava/lang/Object;I)V

    :cond_2e
    return-void

    :cond_2f
    return-void
.end method

.method private final a(Ljava/lang/Object;I)Z
    .registers 9

    .line 495
    invoke-direct {p0, p2}, Lek;->f(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v1, v0

    int-to-long v1, v1

    const-wide/32 v3, 0xfffff

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_eb

    .line 496
    invoke-direct {p0, p2}, Lek;->e(I)I

    move-result p2

    .line 497
    invoke-static {p2}, Lek;->h(I)J

    move-result-wide v0

    .line 498
    invoke-static {p2}, Lek;->g(I)I

    move-result p2

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_f8

    .line 513
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 522
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 499
    :pswitch_29
    invoke-static {p1, v0, v1}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_30

    return v5

    :cond_30
    return v4

    .line 500
    :pswitch_31
    invoke-static {p1, v0, v1}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3a

    return v5

    :cond_3a
    return v4

    .line 501
    :pswitch_3b
    invoke-static {p1, v0, v1}, Lfr;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_42

    return v5

    :cond_42
    return v4

    .line 502
    :pswitch_43
    invoke-static {p1, v0, v1}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_4c

    return v5

    :cond_4c
    return v4

    .line 503
    :pswitch_4d
    invoke-static {p1, v0, v1}, Lfr;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_54

    return v5

    :cond_54
    return v4

    .line 504
    :pswitch_55
    invoke-static {p1, v0, v1}, Lfr;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5c

    return v5

    :cond_5c
    return v4

    .line 505
    :pswitch_5d
    invoke-static {p1, v0, v1}, Lfr;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_64

    return v5

    :cond_64
    return v4

    .line 506
    :pswitch_65
    sget-object p2, Lck;->b:Lck;

    invoke-static {p1, v0, v1}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lck;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_72

    return v5

    :cond_72
    return v4

    .line 507
    :pswitch_73
    invoke-static {p1, v0, v1}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7a

    return v5

    :cond_7a
    return v4

    .line 508
    :pswitch_7b
    invoke-static {p1, v0, v1}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 509
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_8d

    .line 510
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8c

    return v5

    :cond_8c
    return v4

    .line 511
    :cond_8d
    instance-of p2, p1, Lck;

    if-eqz p2, :cond_9b

    .line 512
    sget-object p2, Lck;->b:Lck;

    invoke-virtual {p2, p1}, Lck;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9a

    return v5

    :cond_9a
    return v4

    .line 523
    :cond_9b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 513
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 514
    :pswitch_a1
    invoke-static {p1, v0, v1}, Lfr;->c(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 515
    :pswitch_a6
    invoke-static {p1, v0, v1}, Lfr;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_ad

    return v5

    :cond_ad
    return v4

    .line 516
    :pswitch_ae
    invoke-static {p1, v0, v1}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_b7

    return v5

    :cond_b7
    return v4

    .line 517
    :pswitch_b8
    invoke-static {p1, v0, v1}, Lfr;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_bf

    return v5

    :cond_bf
    return v4

    .line 518
    :pswitch_c0
    invoke-static {p1, v0, v1}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_c9

    return v5

    :cond_c9
    return v4

    .line 519
    :pswitch_ca
    invoke-static {p1, v0, v1}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_d3

    return v5

    :cond_d3
    return v4

    .line 520
    :pswitch_d4
    invoke-static {p1, v0, v1}, Lfr;->d(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_de

    return v5

    :cond_de
    return v4

    .line 521
    :pswitch_df
    invoke-static {p1, v0, v1}, Lfr;->e(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double p1, p1, v0

    if-eqz p1, :cond_ea

    return v5

    :cond_ea
    return v4

    .line 523
    :cond_eb
    invoke-static {p1, v1, v2}, Lfr;->a(Ljava/lang/Object;J)I

    move-result p1

    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v5, p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_f7

    return v5

    :cond_f7
    return v4

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_df
        :pswitch_d4
        :pswitch_ca
        :pswitch_c0
        :pswitch_b8
        :pswitch_ae
        :pswitch_a6
        :pswitch_a1
        :pswitch_7b
        :pswitch_73
        :pswitch_65
        :pswitch_5d
        :pswitch_55
        :pswitch_4d
        :pswitch_43
        :pswitch_3b
        :pswitch_31
        :pswitch_29
    .end packed-switch
.end method

.method private final a(Ljava/lang/Object;II)Z
    .registers 6

    .line 550
    invoke-direct {p0, p3}, Lek;->f(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 551
    invoke-static {p1, v0, v1}, Lfr;->a(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method private final a(Ljava/lang/Object;IIII)Z
    .registers 7

    const v0, 0xfffff

    if-eq p3, v0, :cond_d

    and-int p1, p4, p5

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1

    .line 524
    :cond_d
    invoke-direct {p0, p1, p2}, Lek;->a(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method private static a(Ljava/lang/Object;ILes;)Z
    .registers 5

    .line 548
    invoke-static {p1}, Lek;->h(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 549
    invoke-interface {p2, p0}, Les;->e(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/Object;J)D
    .registers 3

    .line 724
    invoke-static {p0, p1, p2}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private final b(II)I
    .registers 8

    iget-object v0, p0, Lek;->c:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_7
    if-gt p2, v0, :cond_20

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    .line 1065
    invoke-direct {p0, v3}, Lek;->d(I)I

    move-result v4

    if-eq p1, v4, :cond_1f

    if-lt p1, v4, :cond_1b

    add-int/lit8 v2, v2, 0x1

    move p2, v2

    goto :goto_7

    :cond_1b
    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_7

    :cond_1f
    return v3

    :cond_20
    return v1
.end method

.method private final b(I)Ljava/lang/Object;
    .registers 3

    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lek;->d:[Ljava/lang/Object;

    add-int/2addr p1, p1

    .line 67
    aget-object p1, v0, p1

    return-object p1
.end method

.method private final b(Ljava/lang/Object;I)V
    .registers 7

    .line 1060
    invoke-direct {p0, p2}, Lek;->f(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1d

    .line 1061
    invoke-static {p1, v0, v1}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    ushr-int/lit8 p2, p2, 0x14

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    .line 1062
    invoke-static {p1, v0, v1, p2}, Lfr;->a(Ljava/lang/Object;JI)V

    :cond_1d
    return-void
.end method

.method private final b(Ljava/lang/Object;II)V
    .registers 6

    .line 1063
    invoke-direct {p0, p3}, Lek;->f(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 1064
    invoke-static {p1, v0, v1, p2}, Lfr;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Lgb;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lek;->h:Z

    if-eqz v3, :cond_1f

    .line 1067
    invoke-static/range {p1 .. p1}, Lej;->b(Ljava/lang/Object;)Lcu;

    move-result-object v3

    .line 1068
    invoke-virtual {v3}, Lcu;->a()Z

    move-result v5

    if-nez v5, :cond_1f

    .line 1069
    invoke-virtual {v3}, Lcu;->d()Ljava/util/Iterator;

    move-result-object v3

    .line 1070
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_21

    :cond_1f
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_21
    iget-object v6, v0, Lek;->c:[I

    array-length v6, v6

    sget-object v7, Lek;->b:Lsun/misc/Unsafe;

    const v8, 0xfffff

    move-object v12, v5

    move v10, v8

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_2d
    if-ge v5, v6, :cond_513

    .line 1071
    invoke-direct {v0, v5}, Lek;->e(I)I

    move-result v13

    .line 1072
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v14

    .line 1073
    invoke-static {v13}, Lek;->g(I)I

    move-result v15

    iget-boolean v4, v0, Lek;->i:Z

    if-eqz v4, :cond_41

    const/4 v9, 0x0

    goto :goto_5f

    :cond_41
    const/16 v4, 0x11

    if-gt v15, v4, :cond_5e

    .line 1078
    iget-object v4, v0, Lek;->c:[I

    add-int/lit8 v16, v5, 0x2

    .line 1074
    aget v4, v4, v16

    and-int v9, v4, v8

    if-eq v9, v10, :cond_55

    int-to-long v10, v9

    .line 1075
    invoke-virtual {v7, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    goto :goto_56

    :cond_55
    move v9, v10

    :goto_56
    ushr-int/lit8 v4, v4, 0x14

    const/4 v10, 0x1

    shl-int v4, v10, v4

    move v10, v9

    move v9, v4

    goto :goto_5f

    :cond_5e
    const/4 v9, 0x0

    :goto_5f
    if-nez v12, :cond_64

    move/from16 v17, v9

    goto :goto_7f

    .line 1076
    :cond_64
    invoke-static {v12}, Lej;->a(Ljava/util/Map$Entry;)I

    move-result v4

    if-gt v4, v14, :cond_7d

    .line 1077
    invoke-static {v2, v12}, Lej;->a(Lgb;Ljava/util/Map$Entry;)V

    .line 1078
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Ljava/util/Map$Entry;

    goto :goto_5f

    :cond_7b
    const/4 v12, 0x0

    goto :goto_5f

    :cond_7d
    move/from16 v17, v9

    .line 1079
    :goto_7f
    invoke-static {v13}, Lek;->h(I)J

    move-result-wide v8

    packed-switch v15, :pswitch_data_52e

    const/4 v15, 0x0

    goto/16 :goto_50c

    .line 1080
    :pswitch_89
    invoke-direct {v0, v1, v14, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_9d

    .line 1081
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v5}, Lek;->a(I)Les;

    move-result-object v9

    .line 1082
    invoke-interface {v2, v14, v8, v9}, Lgb;->b(ILjava/lang/Object;Les;)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :cond_9d
    const/4 v15, 0x0

    goto/16 :goto_50c

    .line 1083
    :pswitch_a0
    invoke-direct {v0, v1, v14, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_b0

    .line 1084
    invoke-static {v1, v8, v9}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->e(IJ)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :cond_b0
    const/4 v15, 0x0

    goto/16 :goto_50c

    .line 1085
    :pswitch_b3
    invoke-direct {v0, v1, v14, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_c3

    .line 1086
    invoke-static {v1, v8, v9}, Lek;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v14, v8}, Lgb;->f(II)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :cond_c3
    const/4 v15, 0x0

    goto/16 :goto_50c

    .line 1087
    :pswitch_c6
    invoke-direct {v0, v1, v14, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_d6

    .line 1088
    invoke-static {v1, v8, v9}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->b(IJ)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :cond_d6
    const/4 v15, 0x0

    goto/16 :goto_50c

    .line 1089
    :pswitch_d9
    invoke-direct {v0, v1, v14, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_e9

    .line 1090
    invoke-static {v1, v8, v9}, Lek;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v14, v8}, Lgb;->a(II)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :cond_e9
    const/4 v15, 0x0

    goto/16 :goto_50c

    .line 1091
    :pswitch_ec
    invoke-direct {v0, v1, v14, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_fc

    .line 1092
    invoke-static {v1, v8, v9}, Lek;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v14, v8}, Lgb;->b(II)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :cond_fc
    const/4 v15, 0x0

    goto/16 :goto_50c

    .line 1093
    :pswitch_ff
    invoke-direct {v0, v1, v14, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_10f

    .line 1094
    invoke-static {v1, v8, v9}, Lek;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v14, v8}, Lgb;->e(II)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :cond_10f
    const/4 v15, 0x0

    goto/16 :goto_50c

    .line 1095
    :pswitch_112
    invoke-direct {v0, v1, v14, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_124

    .line 1096
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lck;

    invoke-interface {v2, v14, v8}, Lgb;->a(ILck;)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :cond_124
    const/4 v15, 0x0

    goto/16 :goto_50c

    .line 1097
    :pswitch_127
    invoke-direct {v0, v1, v14, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_13b

    .line 1098
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1099
    invoke-direct {v0, v5}, Lek;->a(I)Les;

    move-result-object v9

    invoke-interface {v2, v14, v8, v9}, Lgb;->a(ILjava/lang/Object;Les;)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :cond_13b
    const/4 v15, 0x0

    goto/16 :goto_50c

    .line 1100
    :pswitch_13e
    invoke-direct {v0, v1, v14, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_14e

    .line 1101
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v14, v8, v2}, Lek;->a(ILjava/lang/Object;Lgb;)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :cond_14e
    const/4 v15, 0x0

    goto/16 :goto_50c

    .line 1102
    :pswitch_151
    invoke-direct {v0, v1, v14, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_161

    .line 1103
    invoke-static {v1, v8, v9}, Lek;->f(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {v2, v14, v8}, Lgb;->a(IZ)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :cond_161
    const/4 v15, 0x0

    goto/16 :goto_50c

    .line 1104
    :pswitch_164
    invoke-direct {v0, v1, v14, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_174

    .line 1105
    invoke-static {v1, v8, v9}, Lek;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v14, v8}, Lgb;->d(II)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :cond_174
    const/4 v15, 0x0

    goto/16 :goto_50c

    .line 1106
    :pswitch_177
    invoke-direct {v0, v1, v14, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_187

    .line 1107
    invoke-static {v1, v8, v9}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->d(IJ)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :cond_187
    const/4 v15, 0x0

    goto/16 :goto_50c

    .line 1108
    :pswitch_18a
    invoke-direct {v0, v1, v14, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_19a

    .line 1109
    invoke-static {v1, v8, v9}, Lek;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v14, v8}, Lgb;->c(II)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :cond_19a
    const/4 v15, 0x0

    goto/16 :goto_50c

    .line 1110
    :pswitch_19d
    invoke-direct {v0, v1, v14, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_1ad

    .line 1111
    invoke-static {v1, v8, v9}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->c(IJ)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :cond_1ad
    const/4 v15, 0x0

    goto/16 :goto_50c

    .line 1112
    :pswitch_1b0
    invoke-direct {v0, v1, v14, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_1c0

    .line 1113
    invoke-static {v1, v8, v9}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->a(IJ)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :cond_1c0
    const/4 v15, 0x0

    goto/16 :goto_50c

    .line 1114
    :pswitch_1c3
    invoke-direct {v0, v1, v14, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_1d3

    .line 1115
    invoke-static {v1, v8, v9}, Lek;->c(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {v2, v14, v8}, Lgb;->a(IF)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :cond_1d3
    const/4 v15, 0x0

    goto/16 :goto_50c

    .line 1116
    :pswitch_1d6
    invoke-direct {v0, v1, v14, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_1e6

    .line 1117
    invoke-static {v1, v8, v9}, Lek;->b(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->a(ID)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :cond_1e6
    const/4 v15, 0x0

    goto/16 :goto_50c

    .line 1118
    :pswitch_1e9
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v2, v14, v8, v5}, Lek;->a(Lgb;ILjava/lang/Object;I)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    .line 1119
    :pswitch_1f3
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    .line 1120
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1121
    invoke-direct {v0, v5}, Lek;->a(I)Les;

    move-result-object v9

    .line 1122
    invoke-static {v13, v8, v2, v9}, Leu;->b(ILjava/util/List;Lgb;Les;)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    .line 1123
    :pswitch_207
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v14, 0x1

    .line 1124
    invoke-static {v13, v8, v2, v14}, Leu;->e(ILjava/util/List;Lgb;Z)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :pswitch_218
    const/4 v14, 0x1

    .line 1125
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1126
    invoke-static {v13, v8, v2, v14}, Leu;->j(ILjava/util/List;Lgb;Z)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :pswitch_229
    const/4 v14, 0x1

    .line 1127
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1128
    invoke-static {v13, v8, v2, v14}, Leu;->g(ILjava/util/List;Lgb;Z)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :pswitch_23a
    const/4 v14, 0x1

    .line 1129
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1130
    invoke-static {v13, v8, v2, v14}, Leu;->l(ILjava/util/List;Lgb;Z)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :pswitch_24b
    const/4 v14, 0x1

    .line 1131
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1132
    invoke-static {v13, v8, v2, v14}, Leu;->m(ILjava/util/List;Lgb;Z)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :pswitch_25c
    const/4 v14, 0x1

    .line 1133
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1134
    invoke-static {v13, v8, v2, v14}, Leu;->i(ILjava/util/List;Lgb;Z)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :pswitch_26d
    const/4 v14, 0x1

    .line 1135
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1136
    invoke-static {v13, v8, v2, v14}, Leu;->n(ILjava/util/List;Lgb;Z)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :pswitch_27e
    const/4 v14, 0x1

    .line 1137
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1138
    invoke-static {v13, v8, v2, v14}, Leu;->k(ILjava/util/List;Lgb;Z)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :pswitch_28f
    const/4 v14, 0x1

    .line 1139
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1140
    invoke-static {v13, v8, v2, v14}, Leu;->f(ILjava/util/List;Lgb;Z)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :pswitch_2a0
    const/4 v14, 0x1

    .line 1141
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1142
    invoke-static {v13, v8, v2, v14}, Leu;->h(ILjava/util/List;Lgb;Z)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :pswitch_2b1
    const/4 v14, 0x1

    .line 1143
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1144
    invoke-static {v13, v8, v2, v14}, Leu;->d(ILjava/util/List;Lgb;Z)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :pswitch_2c2
    const/4 v14, 0x1

    .line 1145
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1146
    invoke-static {v13, v8, v2, v14}, Leu;->c(ILjava/util/List;Lgb;Z)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :pswitch_2d3
    const/4 v14, 0x1

    .line 1147
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1148
    invoke-static {v13, v8, v2, v14}, Leu;->b(ILjava/util/List;Lgb;Z)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    :pswitch_2e4
    const/4 v14, 0x1

    .line 1149
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1150
    invoke-static {v13, v8, v2, v14}, Leu;->a(ILjava/util/List;Lgb;Z)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    .line 1151
    :pswitch_2f5
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v14, 0x0

    .line 1152
    invoke-static {v13, v8, v2, v14}, Leu;->e(ILjava/util/List;Lgb;Z)V

    move v15, v14

    goto/16 :goto_50c

    :pswitch_306
    const/4 v14, 0x0

    .line 1153
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1154
    invoke-static {v13, v8, v2, v14}, Leu;->j(ILjava/util/List;Lgb;Z)V

    move v15, v14

    goto/16 :goto_50c

    :pswitch_317
    const/4 v14, 0x0

    .line 1155
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1156
    invoke-static {v13, v8, v2, v14}, Leu;->g(ILjava/util/List;Lgb;Z)V

    move v15, v14

    goto/16 :goto_50c

    :pswitch_328
    const/4 v14, 0x0

    .line 1157
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1158
    invoke-static {v13, v8, v2, v14}, Leu;->l(ILjava/util/List;Lgb;Z)V

    move v15, v14

    goto/16 :goto_50c

    :pswitch_339
    const/4 v14, 0x0

    .line 1159
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1160
    invoke-static {v13, v8, v2, v14}, Leu;->m(ILjava/util/List;Lgb;Z)V

    move v15, v14

    goto/16 :goto_50c

    :pswitch_34a
    const/4 v14, 0x0

    .line 1161
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1162
    invoke-static {v13, v8, v2, v14}, Leu;->i(ILjava/util/List;Lgb;Z)V

    move v15, v14

    goto/16 :goto_50c

    .line 1163
    :pswitch_35b
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1164
    invoke-static {v13, v8, v2}, Leu;->b(ILjava/util/List;Lgb;)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    .line 1165
    :pswitch_36b
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    .line 1166
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1167
    invoke-direct {v0, v5}, Lek;->a(I)Les;

    move-result-object v9

    .line 1168
    invoke-static {v13, v8, v2, v9}, Leu;->a(ILjava/util/List;Lgb;Les;)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    .line 1169
    :pswitch_37f
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1170
    invoke-static {v13, v8, v2}, Leu;->a(ILjava/util/List;Lgb;)V

    const/4 v15, 0x0

    goto/16 :goto_50c

    .line 1171
    :pswitch_38f
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v15, 0x0

    .line 1172
    invoke-static {v13, v8, v2, v15}, Leu;->n(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_50c

    :pswitch_39f
    const/4 v15, 0x0

    .line 1173
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1174
    invoke-static {v13, v8, v2, v15}, Leu;->k(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_50c

    :pswitch_3af
    const/4 v15, 0x0

    .line 1175
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1176
    invoke-static {v13, v8, v2, v15}, Leu;->f(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_50c

    :pswitch_3bf
    const/4 v15, 0x0

    .line 1177
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1178
    invoke-static {v13, v8, v2, v15}, Leu;->h(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_50c

    :pswitch_3cf
    const/4 v15, 0x0

    .line 1179
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1180
    invoke-static {v13, v8, v2, v15}, Leu;->d(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_50c

    :pswitch_3df
    const/4 v15, 0x0

    .line 1181
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1182
    invoke-static {v13, v8, v2, v15}, Leu;->c(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_50c

    :pswitch_3ef
    const/4 v15, 0x0

    .line 1183
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1184
    invoke-static {v13, v8, v2, v15}, Leu;->b(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_50c

    :pswitch_3ff
    const/4 v15, 0x0

    .line 1185
    invoke-direct {v0, v5}, Lek;->d(I)I

    move-result v13

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1186
    invoke-static {v13, v8, v2, v15}, Leu;->a(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_50c

    :pswitch_40f
    const/4 v15, 0x0

    and-int v13, v11, v17

    if-eqz v13, :cond_50c

    .line 1187
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v5}, Lek;->a(I)Les;

    move-result-object v9

    .line 1188
    invoke-interface {v2, v14, v8, v9}, Lgb;->b(ILjava/lang/Object;Les;)V

    goto/16 :goto_50c

    :pswitch_421
    const/4 v15, 0x0

    and-int v13, v11, v17

    if-eqz v13, :cond_50c

    .line 1189
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->e(IJ)V

    goto/16 :goto_50c

    :pswitch_42f
    const/4 v15, 0x0

    and-int v13, v11, v17

    if-eqz v13, :cond_50c

    .line 1190
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v14, v8}, Lgb;->f(II)V

    goto/16 :goto_50c

    :pswitch_43d
    const/4 v15, 0x0

    and-int v13, v11, v17

    if-eqz v13, :cond_50c

    .line 1191
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->b(IJ)V

    goto/16 :goto_50c

    :pswitch_44b
    const/4 v15, 0x0

    and-int v13, v11, v17

    if-eqz v13, :cond_50c

    .line 1192
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v14, v8}, Lgb;->a(II)V

    goto/16 :goto_50c

    :pswitch_459
    const/4 v15, 0x0

    and-int v13, v11, v17

    if-eqz v13, :cond_50c

    .line 1193
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v14, v8}, Lgb;->b(II)V

    goto/16 :goto_50c

    :pswitch_467
    const/4 v15, 0x0

    and-int v13, v11, v17

    if-eqz v13, :cond_50c

    .line 1194
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v14, v8}, Lgb;->e(II)V

    goto/16 :goto_50c

    :pswitch_475
    const/4 v15, 0x0

    and-int v13, v11, v17

    if-eqz v13, :cond_50c

    .line 1195
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lck;

    invoke-interface {v2, v14, v8}, Lgb;->a(ILck;)V

    goto/16 :goto_50c

    :pswitch_485
    const/4 v15, 0x0

    and-int v13, v11, v17

    if-eqz v13, :cond_50c

    .line 1196
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1197
    invoke-direct {v0, v5}, Lek;->a(I)Les;

    move-result-object v9

    invoke-interface {v2, v14, v8, v9}, Lgb;->a(ILjava/lang/Object;Les;)V

    goto/16 :goto_50c

    :pswitch_497
    const/4 v15, 0x0

    and-int v13, v11, v17

    if-eqz v13, :cond_50c

    .line 1198
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v14, v8, v2}, Lek;->a(ILjava/lang/Object;Lgb;)V

    goto/16 :goto_50c

    :pswitch_4a5
    const/4 v15, 0x0

    and-int v13, v11, v17

    if-eqz v13, :cond_50c

    .line 1199
    invoke-static {v1, v8, v9}, Lfr;->c(Ljava/lang/Object;J)Z

    move-result v8

    .line 1200
    invoke-interface {v2, v14, v8}, Lgb;->a(IZ)V

    goto :goto_50c

    :pswitch_4b2
    const/4 v15, 0x0

    and-int v13, v11, v17

    if-eqz v13, :cond_50c

    .line 1201
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v14, v8}, Lgb;->d(II)V

    goto :goto_50c

    :pswitch_4bf
    const/4 v15, 0x0

    and-int v13, v11, v17

    if-eqz v13, :cond_50c

    .line 1202
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->d(IJ)V

    goto :goto_50c

    :pswitch_4cc
    const/4 v15, 0x0

    and-int v13, v11, v17

    if-eqz v13, :cond_50c

    .line 1203
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v14, v8}, Lgb;->c(II)V

    goto :goto_50c

    :pswitch_4d9
    const/4 v15, 0x0

    and-int v13, v11, v17

    if-eqz v13, :cond_50c

    .line 1204
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->c(IJ)V

    goto :goto_50c

    :pswitch_4e6
    const/4 v15, 0x0

    and-int v13, v11, v17

    if-eqz v13, :cond_50c

    .line 1205
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->a(IJ)V

    goto :goto_50c

    :pswitch_4f3
    const/4 v15, 0x0

    and-int v13, v11, v17

    if-eqz v13, :cond_50c

    .line 1206
    invoke-static {v1, v8, v9}, Lfr;->d(Ljava/lang/Object;J)F

    move-result v8

    .line 1207
    invoke-interface {v2, v14, v8}, Lgb;->a(IF)V

    goto :goto_50c

    :pswitch_500
    const/4 v15, 0x0

    and-int v13, v11, v17

    if-eqz v13, :cond_50c

    .line 1208
    invoke-static {v1, v8, v9}, Lfr;->e(Ljava/lang/Object;J)D

    move-result-wide v8

    .line 1209
    invoke-interface {v2, v14, v8, v9}, Lgb;->a(ID)V

    :cond_50c
    :goto_50c
    add-int/lit8 v5, v5, 0x3

    const v8, 0xfffff

    goto/16 :goto_2d

    :cond_513
    :goto_513
    if-eqz v12, :cond_528

    .line 1210
    invoke-static {v2, v12}, Lej;->a(Lgb;Ljava/util/Map$Entry;)V

    .line 1211
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_526

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Ljava/util/Map$Entry;

    goto :goto_513

    :cond_526
    const/4 v12, 0x0

    goto :goto_513

    :cond_528
    iget-object v3, v0, Lek;->o:Lfh;

    .line 1212
    invoke-static {v3, v1, v2}, Lek;->a(Lfh;Ljava/lang/Object;Lgb;)V

    return-void

    :pswitch_data_52e
    .packed-switch 0x0
        :pswitch_500
        :pswitch_4f3
        :pswitch_4e6
        :pswitch_4d9
        :pswitch_4cc
        :pswitch_4bf
        :pswitch_4b2
        :pswitch_4a5
        :pswitch_497
        :pswitch_485
        :pswitch_475
        :pswitch_467
        :pswitch_459
        :pswitch_44b
        :pswitch_43d
        :pswitch_42f
        :pswitch_421
        :pswitch_40f
        :pswitch_3ff
        :pswitch_3ef
        :pswitch_3df
        :pswitch_3cf
        :pswitch_3bf
        :pswitch_3af
        :pswitch_39f
        :pswitch_38f
        :pswitch_37f
        :pswitch_36b
        :pswitch_35b
        :pswitch_34a
        :pswitch_339
        :pswitch_328
        :pswitch_317
        :pswitch_306
        :pswitch_2f5
        :pswitch_2e4
        :pswitch_2d3
        :pswitch_2c2
        :pswitch_2b1
        :pswitch_2a0
        :pswitch_28f
        :pswitch_27e
        :pswitch_26d
        :pswitch_25c
        :pswitch_24b
        :pswitch_23a
        :pswitch_229
        :pswitch_218
        :pswitch_207
        :pswitch_1f3
        :pswitch_1e9
        :pswitch_1d6
        :pswitch_1c3
        :pswitch_1b0
        :pswitch_19d
        :pswitch_18a
        :pswitch_177
        :pswitch_164
        :pswitch_151
        :pswitch_13e
        :pswitch_127
        :pswitch_112
        :pswitch_ff
        :pswitch_ec
        :pswitch_d9
        :pswitch_c6
        :pswitch_b3
        :pswitch_a0
        :pswitch_89
    .end packed-switch
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 8

    .line 639
    invoke-direct {p0, p3}, Lek;->e(I)I

    move-result v0

    .line 640
    invoke-direct {p0, p3}, Lek;->d(I)I

    move-result v1

    .line 641
    invoke-static {v0}, Lek;->h(I)J

    move-result-wide v2

    .line 642
    invoke-direct {p0, p2, v1, p3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 643
    invoke-static {p1, v2, v3}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 644
    invoke-static {p2, v2, v3}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_2a

    if-nez p2, :cond_1f

    goto :goto_2a

    .line 647
    :cond_1f
    invoke-static {v0, p2}, Ldj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 648
    invoke-static {p1, v2, v3, p2}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 649
    invoke-direct {p0, p1, v1, p3}, Lek;->b(Ljava/lang/Object;II)V

    return-void

    :cond_2a
    :goto_2a
    if-eqz p2, :cond_32

    .line 645
    invoke-static {p1, v2, v3, p2}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 646
    invoke-direct {p0, p1, v1, p3}, Lek;->b(Ljava/lang/Object;II)V

    :cond_32
    return-void

    :cond_33
    return-void
.end method

.method private final b(Ljava/lang/Object;[BIILby;)V
    .registers 36

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    sget-object v9, Lek;->b:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    move/from16 v0, p3

    move v1, v10

    move/from16 v2, v16

    move v6, v2

    const v7, 0xfffff

    :goto_18
    if-ge v0, v13, :cond_440

    add-int/lit8 v3, v0, 0x1

    .line 890
    aget-byte v0, v12, v0

    if-gez v0, :cond_2a

    .line 891
    invoke-static {v0, v12, v3, v11}, Leb;->a(I[BILby;)I

    move-result v0

    iget v3, v11, Lby;->a:I

    move v4, v0

    move/from16 v17, v3

    goto :goto_2d

    :cond_2a
    move/from16 v17, v0

    move v4, v3

    :goto_2d
    ushr-int/lit8 v5, v17, 0x3

    and-int/lit8 v3, v17, 0x7

    if-le v5, v1, :cond_3b

    div-int/lit8 v2, v2, 0x3

    .line 892
    invoke-direct {v15, v5, v2}, Lek;->a(II)I

    move-result v0

    move v2, v0

    goto :goto_40

    .line 893
    :cond_3b
    invoke-direct {v15, v5}, Lek;->i(I)I

    move-result v0

    move v2, v0

    :goto_40
    if-eq v2, v10, :cond_40e

    .line 892
    iget-object v0, v15, Lek;->c:[I

    add-int/lit8 v1, v2, 0x1

    .line 894
    aget v1, v0, v1

    .line 895
    invoke-static {v1}, Lek;->g(I)I

    move-result v0

    move-object/from16 v18, v9

    .line 896
    invoke-static {v1}, Lek;->h(I)J

    move-result-wide v8

    const/16 v10, 0x11

    move/from16 p3, v5

    if-gt v0, v10, :cond_28e

    iget-object v10, v15, Lek;->c:[I

    add-int/lit8 v21, v2, 0x2

    .line 897
    aget v10, v10, v21

    ushr-int/lit8 v21, v10, 0x14

    const/4 v5, 0x1

    shl-int v21, v5, v21

    const v13, 0xfffff

    and-int/2addr v10, v13

    if-ne v10, v7, :cond_71

    move/from16 v23, v1

    move/from16 v19, v2

    move v10, v7

    move-object/from16 v7, v18

    goto :goto_8b

    :cond_71
    if-eq v7, v13, :cond_7e

    move/from16 v23, v1

    move/from16 v19, v2

    int-to-long v1, v7

    move-object/from16 v7, v18

    .line 898
    invoke-virtual {v7, v14, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_84

    :cond_7e
    move/from16 v23, v1

    move/from16 v19, v2

    move-object/from16 v7, v18

    :goto_84
    if-eq v10, v13, :cond_8b

    int-to-long v1, v10

    .line 899
    invoke-virtual {v7, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    :cond_8b
    :goto_8b
    const/4 v1, 0x5

    packed-switch v0, :pswitch_data_45e

    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v19, p3

    goto/16 :goto_282

    :pswitch_97
    if-nez v3, :cond_bc

    .line 900
    invoke-static {v12, v4, v11}, Leb;->b([BILby;)I

    move-result v17

    iget-wide v0, v11, Lby;->b:J

    .line 901
    invoke-static {v0, v1}, Lcl;->a(J)J

    move-result-wide v4

    move-object v0, v7

    move-object/from16 v1, p1

    move/from16 v13, v19

    move-wide v2, v8

    move/from16 v19, p3

    .line 902
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v21

    move-object v9, v7

    move v7, v10

    move v2, v13

    move/from16 v0, v17

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_18

    :cond_bc
    move/from16 v13, v19

    move/from16 v19, p3

    const v18, 0xfffff

    goto/16 :goto_282

    :pswitch_c5
    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v3, :cond_e4

    .line 903
    invoke-static {v12, v4, v11}, Leb;->a([BILby;)I

    move-result v0

    iget v1, v11, Lby;->a:I

    .line 904
    invoke-static {v1}, Lcl;->a(I)I

    move-result v1

    .line 905
    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v6, v6, v21

    move-object v9, v7

    move v7, v10

    move v2, v13

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_18

    :cond_e4
    const v18, 0xfffff

    goto/16 :goto_282

    :pswitch_e9
    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v3, :cond_104

    .line 906
    invoke-static {v12, v4, v11}, Leb;->a([BILby;)I

    move-result v0

    iget v1, v11, Lby;->a:I

    .line 907
    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v6, v6, v21

    move-object v9, v7

    move v7, v10

    move v2, v13

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_18

    :cond_104
    const v18, 0xfffff

    goto/16 :goto_282

    :pswitch_109
    move/from16 v13, v19

    const/4 v0, 0x2

    move/from16 v19, p3

    if-ne v3, v0, :cond_125

    .line 908
    invoke-static {v12, v4, v11}, Leb;->e([BILby;)I

    move-result v0

    iget-object v1, v11, Lby;->c:Ljava/lang/Object;

    .line 909
    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v6, v6, v21

    move-object v9, v7

    move v7, v10

    move v2, v13

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_18

    :cond_125
    const v18, 0xfffff

    goto/16 :goto_282

    :pswitch_12a
    move/from16 v13, v19

    const/4 v0, 0x2

    move/from16 v19, p3

    if-ne v3, v0, :cond_161

    .line 910
    invoke-direct {v15, v13}, Lek;->a(I)Les;

    move-result-object v0

    move/from16 v2, p4

    const v18, 0xfffff

    .line 911
    invoke-static {v0, v12, v4, v2, v11}, Leb;->a(Les;[BIILby;)I

    move-result v0

    .line 912
    invoke-virtual {v7, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_14a

    iget-object v1, v11, Lby;->c:Ljava/lang/Object;

    .line 913
    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_153

    :cond_14a
    iget-object v3, v11, Lby;->c:Ljava/lang/Object;

    .line 914
    invoke-static {v1, v3}, Ldj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 915
    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_153
    or-int v6, v6, v21

    move-object v9, v7

    move v7, v10

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v29, v13

    move v13, v2

    move/from16 v2, v29

    goto/16 :goto_18

    :cond_161
    move/from16 v2, p4

    const v18, 0xfffff

    goto/16 :goto_282

    :pswitch_168
    move/from16 v18, v13

    move/from16 v13, v19

    const/4 v0, 0x2

    move/from16 v2, p4

    move/from16 v19, p3

    if-eq v3, v0, :cond_175

    goto/16 :goto_282

    :cond_175
    const/high16 v0, 0x20000000

    and-int v0, v23, v0

    if-eqz v0, :cond_180

    .line 917
    invoke-static {v12, v4, v11}, Leb;->d([BILby;)I

    move-result v0

    goto :goto_184

    .line 916
    :cond_180
    invoke-static {v12, v4, v11}, Leb;->c([BILby;)I

    move-result v0

    .line 917
    :goto_184
    iget-object v1, v11, Lby;->c:Ljava/lang/Object;

    .line 918
    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v6, v6, v21

    move-object v9, v7

    move v7, v10

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v29, v13

    move v13, v2

    move/from16 v2, v29

    goto/16 :goto_18

    :pswitch_197
    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v2, p4

    move/from16 v19, p3

    if-nez v3, :cond_282

    .line 919
    invoke-static {v12, v4, v11}, Leb;->b([BILby;)I

    move-result v0

    iget-wide v3, v11, Lby;->b:J

    const-wide/16 v22, 0x0

    cmp-long v1, v3, v22

    if-eqz v1, :cond_1ae

    goto :goto_1b0

    :cond_1ae
    move/from16 v5, v16

    .line 920
    :goto_1b0
    invoke-static {v14, v8, v9, v5}, Lfr;->a(Ljava/lang/Object;JZ)V

    or-int v6, v6, v21

    move-object v9, v7

    move v7, v10

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v29, v13

    move v13, v2

    move/from16 v2, v29

    goto/16 :goto_18

    :pswitch_1c1
    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v2, p4

    move/from16 v19, p3

    if-ne v3, v1, :cond_282

    .line 921
    invoke-static {v12, v4}, Leb;->a([BI)I

    move-result v0

    invoke-virtual {v7, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    or-int v6, v6, v21

    move-object v9, v7

    move v7, v10

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v29, v13

    move v13, v2

    move/from16 v2, v29

    goto/16 :goto_18

    :pswitch_1e2
    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v2, p4

    move/from16 v19, p3

    if-ne v3, v5, :cond_282

    .line 922
    invoke-static {v12, v4}, Leb;->b([BI)J

    move-result-wide v22

    move-object v0, v7

    move-object/from16 v1, p1

    move-wide v2, v8

    move v8, v4

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    or-int v6, v6, v21

    move-object v9, v7

    move v7, v10

    move v2, v13

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_18

    :pswitch_208
    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v3, :cond_282

    .line 923
    invoke-static {v12, v4, v11}, Leb;->a([BILby;)I

    move-result v0

    iget v1, v11, Lby;->a:I

    .line 924
    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v6, v6, v21

    move-object v9, v7

    move v7, v10

    move v2, v13

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_18

    :pswitch_225
    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v3, :cond_282

    .line 925
    invoke-static {v12, v4, v11}, Leb;->b([BILby;)I

    move-result v17

    iget-wide v4, v11, Lby;->b:J

    move-object v0, v7

    move-object/from16 v1, p1

    move-wide v2, v8

    .line 926
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v21

    move-object v9, v7

    move v7, v10

    move v2, v13

    move/from16 v0, v17

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_18

    :pswitch_248
    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v19, p3

    if-ne v3, v1, :cond_282

    .line 927
    invoke-static {v12, v4}, Leb;->d([BI)F

    move-result v0

    invoke-static {v14, v8, v9, v0}, Lfr;->a(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v4, 0x4

    or-int v6, v6, v21

    move-object v9, v7

    move v7, v10

    move v2, v13

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_18

    :pswitch_265
    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v19, p3

    if-ne v3, v5, :cond_282

    .line 928
    invoke-static {v12, v4}, Leb;->c([BI)D

    move-result-wide v0

    invoke-static {v14, v8, v9, v0, v1}, Lfr;->a(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v4, 0x8

    or-int v6, v6, v21

    move-object v9, v7

    move v7, v10

    move v2, v13

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_18

    :cond_282
    :goto_282
    move v2, v4

    move-object v8, v7

    move/from16 v25, v10

    move/from16 v20, v13

    move-object v7, v14

    move-object v9, v15

    const/16 v18, -0x1

    goto/16 :goto_41d

    :cond_28e
    move/from16 v19, p3

    move/from16 v23, v1

    move v13, v2

    move-object/from16 v10, v18

    const v18, 0xfffff

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_39a

    const/16 v1, 0x31

    if-gt v0, v1, :cond_2fa

    move/from16 v1, v23

    int-to-long v1, v1

    move v5, v0

    move-object/from16 v0, p0

    move-wide/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 p3, v3

    move v3, v4

    move v15, v4

    move/from16 v4, p4

    move/from16 v23, v5

    move/from16 v5, v17

    move/from16 v24, v6

    move/from16 v6, v19

    move/from16 v25, v7

    move/from16 v7, p3

    move-wide/from16 v26, v8

    move/from16 v9, v18

    move v8, v13

    move-object/from16 v28, v10

    const/16 v18, -0x1

    move-wide/from16 v9, v21

    move/from16 v11, v23

    move/from16 v20, v13

    move-wide/from16 v12, v26

    move-object/from16 v14, p5

    .line 936
    invoke-direct/range {v0 .. v14}, Lek;->a(Ljava/lang/Object;[BIIIIIIJIJLby;)I

    move-result v0

    if-eq v0, v15, :cond_2ef

    move-object/from16 v12, p2

    move-object/from16 v11, p5

    move/from16 v10, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v6, v24

    move/from16 v7, v25

    move-object/from16 v9, v28

    move/from16 v13, p4

    move-object/from16 v14, p1

    move-object/from16 v15, p0

    goto/16 :goto_18

    :cond_2ef
    move v2, v0

    move/from16 v6, v24

    move-object/from16 v8, v28

    move-object/from16 v7, p1

    move-object/from16 v9, p0

    goto/16 :goto_41d

    :cond_2fa
    move/from16 p3, v3

    move v15, v4

    move/from16 v24, v6

    move/from16 v25, v7

    move-wide/from16 v26, v8

    move-object/from16 v28, v10

    move/from16 v20, v13

    move/from16 v1, v23

    const/16 v18, -0x1

    move/from16 v23, v0

    const/16 v0, 0x32

    move/from16 v9, v23

    if-eq v9, v0, :cond_352

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 v6, v19

    move/from16 v7, p3

    move-wide/from16 v10, v26

    move/from16 v12, v20

    move-object/from16 v13, p5

    .line 937
    invoke-direct/range {v0 .. v13}, Lek;->a(Ljava/lang/Object;[BIIIIIIIJILby;)I

    move-result v0

    if-eq v0, v15, :cond_347

    move-object/from16 v12, p2

    move-object/from16 v11, p5

    move/from16 v10, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v6, v24

    move/from16 v7, v25

    move-object/from16 v9, v28

    move/from16 v13, p4

    move-object/from16 v14, p1

    move-object/from16 v15, p0

    goto/16 :goto_18

    :cond_347
    move v2, v0

    move/from16 v6, v24

    move-object/from16 v8, v28

    move-object/from16 v7, p1

    move-object/from16 v9, p0

    goto/16 :goto_41d

    :cond_352
    move/from16 v0, p3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_362

    move v3, v15

    move/from16 v10, v20

    move-object/from16 v8, v28

    move-object/from16 v7, p1

    move-object/from16 v9, p0

    goto/16 :goto_408

    :cond_362
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v20

    move-wide/from16 v6, v26

    move-object/from16 v8, p5

    .line 938
    invoke-direct/range {v0 .. v8}, Lek;->a(Ljava/lang/Object;[BIIIJLby;)I

    move-result v0

    if-eq v0, v15, :cond_38f

    move-object/from16 v12, p2

    move-object/from16 v11, p5

    move/from16 v10, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v6, v24

    move/from16 v7, v25

    move-object/from16 v9, v28

    move/from16 v13, p4

    move-object/from16 v14, p1

    move-object/from16 v15, p0

    goto/16 :goto_18

    :cond_38f
    move v2, v0

    move/from16 v6, v24

    move-object/from16 v8, v28

    move-object/from16 v7, p1

    move-object/from16 v9, p0

    goto/16 :goto_41d

    :cond_39a
    move v0, v3

    move v15, v4

    move/from16 v24, v6

    move/from16 v25, v7

    move-wide/from16 v26, v8

    move-object/from16 v28, v10

    move/from16 v20, v13

    const/4 v1, 0x2

    const/16 v18, -0x1

    if-ne v0, v1, :cond_3ff

    move-wide/from16 v0, v26

    move-object/from16 v8, v28

    move-object/from16 v7, p1

    .line 929
    invoke-virtual {v8, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldi;

    .line 930
    invoke-interface {v2}, Ldi;->a()Z

    move-result v3

    if-nez v3, :cond_3d5

    .line 931
    invoke-interface {v2}, Ldi;->size()I

    move-result v3

    if-eqz v3, :cond_3c5

    add-int/2addr v3, v3

    goto :goto_3c7

    :cond_3c5
    const/16 v3, 0xa

    .line 932
    :goto_3c7
    invoke-interface {v2, v3}, Ldi;->a(I)Ldi;

    move-result-object v2

    .line 933
    invoke-virtual {v8, v7, v0, v1, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v5, v2

    move v3, v15

    move/from16 v10, v20

    move-object/from16 v9, p0

    goto :goto_3db

    :cond_3d5
    move-object v5, v2

    move v3, v15

    move/from16 v10, v20

    move-object/from16 v9, p0

    .line 934
    :goto_3db
    invoke-direct {v9, v10}, Lek;->a(I)Les;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p5

    .line 935
    invoke-static/range {v0 .. v6}, Leb;->a(Les;I[BIILdi;Lby;)I

    move-result v0

    move-object/from16 v12, p2

    move-object/from16 v11, p5

    move-object v14, v7

    move-object v15, v9

    move v2, v10

    move/from16 v10, v18

    move/from16 v1, v19

    move/from16 v6, v24

    move/from16 v7, v25

    move/from16 v13, p4

    move-object v9, v8

    goto/16 :goto_18

    :cond_3ff
    move v3, v15

    move/from16 v10, v20

    move-object/from16 v8, v28

    move-object/from16 v7, p1

    move-object/from16 v9, p0

    :goto_408
    move v2, v3

    move/from16 v20, v10

    move/from16 v6, v24

    goto :goto_41d

    :cond_40e
    move v3, v4

    move/from16 v19, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move-object v8, v9

    move/from16 v18, v10

    move-object v7, v14

    move-object v9, v15

    move v2, v3

    move/from16 v20, v16

    .line 939
    :goto_41d
    invoke-static/range {p1 .. p1}, Lek;->c(Ljava/lang/Object;)Lfi;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    .line 940
    invoke-static/range {v0 .. v5}, Leb;->a(I[BIILfi;Lby;)I

    move-result v0

    move-object/from16 v12, p2

    move-object/from16 v11, p5

    move-object v14, v7

    move-object v15, v9

    move/from16 v10, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v7, v25

    move/from16 v13, p4

    move-object v9, v8

    goto/16 :goto_18

    :cond_440
    move/from16 v24, v6

    move v10, v7

    move-object v8, v9

    move-object v7, v14

    move-object v9, v15

    const v1, 0xfffff

    if-eq v10, v1, :cond_454

    int-to-long v1, v10

    move/from16 v6, v24

    .line 941
    invoke-virtual {v8, v7, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v1, p4

    goto :goto_456

    :cond_454
    move/from16 v1, p4

    :goto_456
    if-ne v0, v1, :cond_459

    return-void

    .line 942
    :cond_459
    invoke-static {}, Ldl;->e()Ldl;

    move-result-object v0

    throw v0

    :pswitch_data_45e
    .packed-switch 0x0
        :pswitch_265
        :pswitch_248
        :pswitch_225
        :pswitch_225
        :pswitch_208
        :pswitch_1e2
        :pswitch_1c1
        :pswitch_197
        :pswitch_168
        :pswitch_12a
        :pswitch_109
        :pswitch_208
        :pswitch_e9
        :pswitch_1c1
        :pswitch_1e2
        :pswitch_c5
        :pswitch_97
    .end packed-switch
.end method

.method private static c(Ljava/lang/Object;J)F
    .registers 3

    .line 725
    invoke-static {p0, p1, p2}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private final c(I)Ldh;
    .registers 3

    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lek;->d:[Ljava/lang/Object;

    add-int/2addr p1, p1

    add-int/lit8 p1, p1, 0x1

    .line 66
    aget-object p1, v0, p1

    check-cast p1, Ldh;

    return-object p1
.end method

.method static c(Ljava/lang/Object;)Lfi;
    .registers 3

    .line 71
    check-cast p0, Lde;

    iget-object v0, p0, Lde;->h:Lfi;

    .line 72
    sget-object v1, Lfi;->a:Lfi;

    if-ne v0, v1, :cond_e

    .line 73
    invoke-static {}, Lfi;->a()Lfi;

    move-result-object v0

    iput-object v0, p0, Lde;->h:Lfi;

    :cond_e
    return-object v0
.end method

.method private final c(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 4

    .line 5
    invoke-direct {p0, p1, p3}, Lek;->a(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lek;->a(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method private final d(I)I
    .registers 3

    iget-object v0, p0, Lek;->c:[I

    .line 722
    aget p1, v0, p1

    return p1
.end method

.method private static d(Ljava/lang/Object;J)I
    .registers 3

    .line 726
    invoke-static {p0, p1, p2}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final e(I)I
    .registers 3

    iget-object v0, p0, Lek;->c:[I

    add-int/lit8 p1, p1, 0x1

    .line 1066
    aget p1, v0, p1

    return p1
.end method

.method private static e(Ljava/lang/Object;J)J
    .registers 3

    .line 727
    invoke-static {p0, p1, p2}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private final f(I)I
    .registers 3

    iget-object v0, p0, Lek;->c:[I

    add-int/lit8 p1, p1, 0x2

    .line 1053
    aget p1, v0, p1

    return p1
.end method

.method private final f(Ljava/lang/Object;)I
    .registers 15

    sget-object v0, Lek;->b:Lsun/misc/Unsafe;

    const v1, 0xfffff

    const/4 v2, 0x0

    move v6, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_a
    iget-object v7, p0, Lek;->c:[I

    array-length v7, v7

    if-ge v3, v7, :cond_4d3

    .line 75
    invoke-direct {p0, v3}, Lek;->e(I)I

    move-result v7

    .line 76
    invoke-direct {p0, v3}, Lek;->d(I)I

    move-result v8

    .line 77
    invoke-static {v7}, Lek;->g(I)I

    move-result v9

    const/16 v10, 0x11

    if-gt v9, v10, :cond_35

    iget-object v10, p0, Lek;->c:[I

    add-int/lit8 v11, v3, 0x2

    .line 78
    aget v10, v10, v11

    and-int v11, v10, v1

    ushr-int/lit8 v10, v10, 0x14

    const/4 v12, 0x1

    shl-int v10, v12, v10

    if-eq v11, v6, :cond_36

    int-to-long v5, v11

    .line 79
    invoke-virtual {v0, p1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v6, v11

    goto :goto_36

    :cond_35
    move v10, v2

    .line 80
    :cond_36
    :goto_36
    invoke-static {v7}, Lek;->h(I)J

    move-result-wide v11

    packed-switch v9, :pswitch_data_52c

    goto/16 :goto_4cf

    .line 81
    :pswitch_3f
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4cf

    .line 82
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Leh;

    .line 83
    invoke-direct {p0, v3}, Lek;->a(I)Les;

    move-result-object v9

    .line 84
    invoke-static {v8, v7, v9}, Lcn;->a(ILeh;Les;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 85
    :pswitch_56
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4cf

    .line 86
    invoke-static {p1, v11, v12}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcn;->d(IJ)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 87
    :pswitch_67
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4cf

    .line 88
    invoke-static {p1, v11, v12}, Lek;->d(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->d(II)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 89
    :pswitch_78
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4cf

    .line 90
    invoke-static {v8}, Lcn;->p(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 91
    :pswitch_85
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4cf

    .line 92
    invoke-static {v8}, Lcn;->o(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 93
    :pswitch_92
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4cf

    .line 94
    invoke-static {p1, v11, v12}, Lek;->d(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->e(II)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 95
    :pswitch_a3
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4cf

    .line 96
    invoke-static {p1, v11, v12}, Lek;->d(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->c(II)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 97
    :pswitch_b4
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4cf

    .line 98
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lck;

    .line 99
    invoke-static {v8, v7}, Lcn;->a(ILck;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 100
    :pswitch_c7
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4cf

    .line 101
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 102
    invoke-direct {p0, v3}, Lek;->a(I)Les;

    move-result-object v9

    invoke-static {v8, v7, v9}, Leu;->a(ILjava/lang/Object;Les;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 103
    :pswitch_dc
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4cf

    .line 104
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 105
    instance-of v9, v7, Lck;

    if-eqz v9, :cond_f3

    .line 106
    check-cast v7, Lck;

    invoke-static {v8, v7}, Lcn;->a(ILck;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 107
    :cond_f3
    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v7}, Lcn;->a(ILjava/lang/String;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 108
    :pswitch_fc
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4cf

    .line 109
    invoke-static {v8}, Lcn;->j(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 110
    :pswitch_109
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4cf

    .line 111
    invoke-static {v8}, Lcn;->l(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 112
    :pswitch_116
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4cf

    .line 113
    invoke-static {v8}, Lcn;->m(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 114
    :pswitch_123
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4cf

    .line 115
    invoke-static {p1, v11, v12}, Lek;->d(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->b(II)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 116
    :pswitch_134
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4cf

    .line 117
    invoke-static {p1, v11, v12}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcn;->c(IJ)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 118
    :pswitch_145
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4cf

    .line 119
    invoke-static {p1, v11, v12}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcn;->b(IJ)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 120
    :pswitch_156
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4cf

    .line 121
    invoke-static {v8}, Lcn;->n(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 122
    :pswitch_163
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4cf

    .line 123
    invoke-static {v8}, Lcn;->k(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 124
    :pswitch_170
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v3}, Lek;->b(I)Ljava/lang/Object;

    move-result-object v8

    .line 125
    invoke-static {v7, v8}, Lff;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    goto/16 :goto_4cf

    .line 126
    :pswitch_17d
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 127
    invoke-direct {p0, v3}, Lek;->a(I)Les;

    move-result-object v9

    .line 128
    invoke-static {v8, v7, v9}, Leu;->b(ILjava/util/List;Les;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 129
    :pswitch_18e
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 130
    invoke-static {v7}, Leu;->c(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4cf

    .line 131
    invoke-static {v8}, Lcn;->a(I)I

    move-result v8

    .line 132
    invoke-static {v7}, Lcn;->c(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_4cf

    .line 133
    :pswitch_1a7
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 134
    invoke-static {v7}, Leu;->g(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4cf

    .line 135
    invoke-static {v8}, Lcn;->a(I)I

    move-result v8

    .line 136
    invoke-static {v7}, Lcn;->c(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_4cf

    .line 137
    :pswitch_1c0
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 138
    invoke-static {v7}, Leu;->i(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4cf

    .line 139
    invoke-static {v8}, Lcn;->a(I)I

    move-result v8

    .line 140
    invoke-static {v7}, Lcn;->c(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_4cf

    .line 141
    :pswitch_1d9
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 142
    invoke-static {v7}, Leu;->h(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4cf

    .line 143
    invoke-static {v8}, Lcn;->a(I)I

    move-result v8

    .line 144
    invoke-static {v7}, Lcn;->c(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_4cf

    .line 145
    :pswitch_1f2
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 146
    invoke-static {v7}, Leu;->d(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4cf

    .line 147
    invoke-static {v8}, Lcn;->a(I)I

    move-result v8

    .line 148
    invoke-static {v7}, Lcn;->c(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_4cf

    .line 149
    :pswitch_20b
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 150
    invoke-static {v7}, Leu;->f(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4cf

    .line 151
    invoke-static {v8}, Lcn;->a(I)I

    move-result v8

    .line 152
    invoke-static {v7}, Lcn;->c(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_4cf

    .line 153
    :pswitch_224
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 154
    invoke-static {v7}, Leu;->j(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4cf

    .line 155
    invoke-static {v8}, Lcn;->a(I)I

    move-result v8

    .line 156
    invoke-static {v7}, Lcn;->c(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_4cf

    .line 157
    :pswitch_23d
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 158
    invoke-static {v7}, Leu;->h(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4cf

    .line 159
    invoke-static {v8}, Lcn;->a(I)I

    move-result v8

    .line 160
    invoke-static {v7}, Lcn;->c(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_4cf

    .line 161
    :pswitch_256
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 162
    invoke-static {v7}, Leu;->i(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4cf

    .line 163
    invoke-static {v8}, Lcn;->a(I)I

    move-result v8

    .line 164
    invoke-static {v7}, Lcn;->c(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_4cf

    .line 165
    :pswitch_26f
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 166
    invoke-static {v7}, Leu;->e(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4cf

    .line 167
    invoke-static {v8}, Lcn;->a(I)I

    move-result v8

    .line 168
    invoke-static {v7}, Lcn;->c(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_4cf

    .line 169
    :pswitch_288
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 170
    invoke-static {v7}, Leu;->b(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4cf

    .line 171
    invoke-static {v8}, Lcn;->a(I)I

    move-result v8

    .line 172
    invoke-static {v7}, Lcn;->c(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_4cf

    .line 173
    :pswitch_2a1
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 174
    invoke-static {v7}, Leu;->a(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4cf

    .line 175
    invoke-static {v8}, Lcn;->a(I)I

    move-result v8

    .line 176
    invoke-static {v7}, Lcn;->c(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_4cf

    .line 177
    :pswitch_2ba
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 178
    invoke-static {v7}, Leu;->h(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4cf

    .line 179
    invoke-static {v8}, Lcn;->a(I)I

    move-result v8

    .line 180
    invoke-static {v7}, Lcn;->c(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_4cf

    .line 181
    :pswitch_2d3
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 182
    invoke-static {v7}, Leu;->i(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4cf

    .line 183
    invoke-static {v8}, Lcn;->a(I)I

    move-result v8

    .line 184
    invoke-static {v7}, Lcn;->c(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_4cf

    .line 185
    :pswitch_2ec
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 186
    invoke-static {v8, v7}, Leu;->j(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 187
    :pswitch_2f9
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 188
    invoke-static {v8, v7}, Leu;->i(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 189
    :pswitch_306
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 190
    invoke-static {v8, v7}, Leu;->f(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 191
    :pswitch_313
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 192
    invoke-static {v8, v7}, Leu;->e(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 193
    :pswitch_320
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 194
    invoke-static {v8, v7}, Leu;->d(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 195
    :pswitch_32d
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 196
    invoke-static {v8, v7}, Leu;->k(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 197
    :pswitch_33a
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 198
    invoke-static {v8, v7}, Leu;->b(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 199
    :pswitch_347
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v3}, Lek;->a(I)Les;

    move-result-object v9

    .line 200
    invoke-static {v8, v7, v9}, Leu;->a(ILjava/util/List;Les;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 201
    :pswitch_358
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Leu;->a(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 202
    :pswitch_365
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 203
    invoke-static {v8, v7}, Leu;->c(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 204
    :pswitch_372
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 205
    invoke-static {v8, v7}, Leu;->e(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 206
    :pswitch_37f
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 207
    invoke-static {v8, v7}, Leu;->f(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 208
    :pswitch_38c
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 209
    invoke-static {v8, v7}, Leu;->g(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 210
    :pswitch_399
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 211
    invoke-static {v8, v7}, Leu;->l(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 212
    :pswitch_3a6
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 213
    invoke-static {v8, v7}, Leu;->h(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 214
    :pswitch_3b3
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 215
    invoke-static {v8, v7}, Leu;->e(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    .line 216
    :pswitch_3c0
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 217
    invoke-static {v8, v7}, Leu;->f(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    :pswitch_3cd
    and-int v7, v5, v10

    if-eqz v7, :cond_4cf

    .line 218
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Leh;

    .line 219
    invoke-direct {p0, v3}, Lek;->a(I)Les;

    move-result-object v9

    .line 220
    invoke-static {v8, v7, v9}, Lcn;->a(ILeh;Les;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    :pswitch_3e2
    and-int v7, v5, v10

    if-eqz v7, :cond_4cf

    .line 221
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcn;->d(IJ)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    :pswitch_3f1
    and-int v7, v5, v10

    if-eqz v7, :cond_4cf

    .line 222
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->d(II)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    :pswitch_400
    and-int v7, v5, v10

    if-eqz v7, :cond_4cf

    .line 223
    invoke-static {v8}, Lcn;->p(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    :pswitch_40b
    and-int v7, v5, v10

    if-eqz v7, :cond_4cf

    .line 224
    invoke-static {v8}, Lcn;->o(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    :pswitch_416
    and-int v7, v5, v10

    if-eqz v7, :cond_4cf

    .line 225
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->e(II)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    :pswitch_425
    and-int v7, v5, v10

    if-eqz v7, :cond_4cf

    .line 226
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->c(II)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    :pswitch_434
    and-int v7, v5, v10

    if-eqz v7, :cond_4cf

    .line 227
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lck;

    .line 228
    invoke-static {v8, v7}, Lcn;->a(ILck;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    :pswitch_445
    and-int v7, v5, v10

    if-eqz v7, :cond_4cf

    .line 229
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 230
    invoke-direct {p0, v3}, Lek;->a(I)Les;

    move-result-object v9

    invoke-static {v8, v7, v9}, Leu;->a(ILjava/lang/Object;Les;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_4cf

    :pswitch_458
    and-int v7, v5, v10

    if-eqz v7, :cond_4cf

    .line 231
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 232
    instance-of v9, v7, Lck;

    if-eqz v9, :cond_46c

    .line 233
    check-cast v7, Lck;

    invoke-static {v8, v7}, Lcn;->a(ILck;)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_4cf

    .line 234
    :cond_46c
    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v7}, Lcn;->a(ILjava/lang/String;)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_4cf

    :pswitch_474
    and-int v7, v5, v10

    if-eqz v7, :cond_4cf

    .line 235
    invoke-static {v8}, Lcn;->j(I)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_4cf

    :pswitch_47e
    and-int v7, v5, v10

    if-eqz v7, :cond_4cf

    .line 236
    invoke-static {v8}, Lcn;->l(I)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_4cf

    :pswitch_488
    and-int v7, v5, v10

    if-eqz v7, :cond_4cf

    .line 237
    invoke-static {v8}, Lcn;->m(I)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_4cf

    :pswitch_492
    and-int v7, v5, v10

    if-eqz v7, :cond_4cf

    .line 238
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->b(II)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_4cf

    :pswitch_4a0
    and-int v7, v5, v10

    if-eqz v7, :cond_4cf

    .line 239
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcn;->c(IJ)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_4cf

    :pswitch_4ae
    and-int v7, v5, v10

    if-eqz v7, :cond_4cf

    .line 240
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcn;->b(IJ)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_4cf

    :pswitch_4bc
    and-int v7, v5, v10

    if-eqz v7, :cond_4cf

    .line 241
    invoke-static {v8}, Lcn;->n(I)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_4cf

    :pswitch_4c6
    and-int v7, v5, v10

    if-eqz v7, :cond_4cf

    .line 242
    invoke-static {v8}, Lcn;->k(I)I

    move-result v7

    add-int/2addr v4, v7

    :cond_4cf
    :goto_4cf
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_a

    .line 241
    :cond_4d3
    iget-object v0, p0, Lek;->o:Lfh;

    .line 243
    invoke-static {v0, p1}, Lek;->a(Lfh;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v4, v0

    iget-boolean v0, p0, Lek;->h:Z

    if-eqz v0, :cond_52a

    .line 244
    invoke-static {p1}, Lej;->b(Ljava/lang/Object;)Lcu;

    move-result-object p1

    move v0, v2

    :goto_4e3
    iget-object v1, p1, Lcu;->a:Lfc;

    .line 245
    invoke-virtual {v1}, Lfc;->a()I

    move-result v1

    if-ge v2, v1, :cond_503

    iget-object v1, p1, Lcu;->a:Lfc;

    .line 246
    invoke-virtual {v1, v2}, Lfc;->b(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 247
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldd;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lcu;->b(Ldd;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4e3

    :cond_503
    iget-object p1, p1, Lcu;->a:Lfc;

    .line 248
    invoke-virtual {p1}, Lfc;->b()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_50d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_529

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 249
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldd;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcu;->b(Ldd;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_50d

    :cond_529
    add-int/2addr v4, v0

    :cond_52a
    return v4

    nop

    :pswitch_data_52c
    .packed-switch 0x0
        :pswitch_4c6
        :pswitch_4bc
        :pswitch_4ae
        :pswitch_4a0
        :pswitch_492
        :pswitch_488
        :pswitch_47e
        :pswitch_474
        :pswitch_458
        :pswitch_445
        :pswitch_434
        :pswitch_425
        :pswitch_416
        :pswitch_40b
        :pswitch_400
        :pswitch_3f1
        :pswitch_3e2
        :pswitch_3cd
        :pswitch_3c0
        :pswitch_3b3
        :pswitch_3a6
        :pswitch_399
        :pswitch_38c
        :pswitch_37f
        :pswitch_372
        :pswitch_365
        :pswitch_358
        :pswitch_347
        :pswitch_33a
        :pswitch_32d
        :pswitch_320
        :pswitch_313
        :pswitch_306
        :pswitch_2f9
        :pswitch_2ec
        :pswitch_2d3
        :pswitch_2ba
        :pswitch_2a1
        :pswitch_288
        :pswitch_26f
        :pswitch_256
        :pswitch_23d
        :pswitch_224
        :pswitch_20b
        :pswitch_1f2
        :pswitch_1d9
        :pswitch_1c0
        :pswitch_1a7
        :pswitch_18e
        :pswitch_17d
        :pswitch_170
        :pswitch_163
        :pswitch_156
        :pswitch_145
        :pswitch_134
        :pswitch_123
        :pswitch_116
        :pswitch_109
        :pswitch_fc
        :pswitch_dc
        :pswitch_c7
        :pswitch_b4
        :pswitch_a3
        :pswitch_92
        :pswitch_85
        :pswitch_78
        :pswitch_67
        :pswitch_56
        :pswitch_3f
    .end packed-switch
.end method

.method private static f(Ljava/lang/Object;J)Z
    .registers 3

    .line 723
    invoke-static {p0, p1, p2}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static g(I)I
    .registers 1

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private final g(Ljava/lang/Object;)I
    .registers 11

    sget-object v0, Lek;->b:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    iget-object v3, p0, Lek;->c:[I

    array-length v3, v3

    if-ge v1, v3, :cond_4c6

    .line 250
    invoke-direct {p0, v1}, Lek;->e(I)I

    move-result v3

    .line 251
    invoke-static {v3}, Lek;->g(I)I

    move-result v4

    .line 252
    invoke-direct {p0, v1}, Lek;->d(I)I

    move-result v5

    .line 253
    invoke-static {v3}, Lek;->h(I)J

    move-result-wide v6

    .line 254
    sget-object v3, Lcw;->J:Lcw;

    iget v3, v3, Lcw;->Z:I

    if-lt v4, v3, :cond_2b

    sget-object v3, Lcw;->W:Lcw;

    iget v3, v3, Lcw;->Z:I

    if-gt v4, v3, :cond_2b

    iget-object v3, p0, Lek;->c:[I

    add-int/lit8 v8, v1, 0x2

    .line 255
    aget v3, v3, v8

    :cond_2b
    packed-switch v4, :pswitch_data_4ce

    goto/16 :goto_4c2

    .line 256
    :pswitch_30
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 257
    invoke-static {p1, v6, v7}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leh;

    .line 258
    invoke-direct {p0, v1}, Lek;->a(I)Les;

    move-result-object v4

    .line 259
    invoke-static {v5, v3, v4}, Lcn;->a(ILeh;Les;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 260
    :pswitch_47
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 261
    invoke-static {p1, v6, v7}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcn;->d(IJ)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 262
    :pswitch_58
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 263
    invoke-static {p1, v6, v7}, Lek;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->d(II)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 264
    :pswitch_69
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 265
    invoke-static {v5}, Lcn;->p(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 266
    :pswitch_76
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 267
    invoke-static {v5}, Lcn;->o(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 268
    :pswitch_83
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 269
    invoke-static {p1, v6, v7}, Lek;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->e(II)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 270
    :pswitch_94
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 271
    invoke-static {p1, v6, v7}, Lek;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->c(II)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 272
    :pswitch_a5
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 273
    invoke-static {p1, v6, v7}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lck;

    .line 274
    invoke-static {v5, v3}, Lcn;->a(ILck;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 275
    :pswitch_b8
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 276
    invoke-static {p1, v6, v7}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 277
    invoke-direct {p0, v1}, Lek;->a(I)Les;

    move-result-object v4

    invoke-static {v5, v3, v4}, Leu;->a(ILjava/lang/Object;Les;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 278
    :pswitch_cd
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 279
    invoke-static {p1, v6, v7}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 280
    instance-of v4, v3, Lck;

    if-eqz v4, :cond_e4

    .line 281
    check-cast v3, Lck;

    invoke-static {v5, v3}, Lcn;->a(ILck;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 282
    :cond_e4
    check-cast v3, Ljava/lang/String;

    invoke-static {v5, v3}, Lcn;->a(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 283
    :pswitch_ed
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 284
    invoke-static {v5}, Lcn;->j(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 285
    :pswitch_fa
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 286
    invoke-static {v5}, Lcn;->l(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 287
    :pswitch_107
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 288
    invoke-static {v5}, Lcn;->m(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 289
    :pswitch_114
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 290
    invoke-static {p1, v6, v7}, Lek;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->b(II)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 291
    :pswitch_125
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 292
    invoke-static {p1, v6, v7}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcn;->c(IJ)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 293
    :pswitch_136
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 294
    invoke-static {p1, v6, v7}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcn;->b(IJ)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 295
    :pswitch_147
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 296
    invoke-static {v5}, Lcn;->n(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 297
    :pswitch_154
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 298
    invoke-static {v5}, Lcn;->k(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 299
    :pswitch_161
    invoke-static {p1, v6, v7}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1}, Lek;->b(I)Ljava/lang/Object;

    move-result-object v4

    .line 300
    invoke-static {v3, v4}, Lff;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    goto/16 :goto_4c2

    .line 301
    :pswitch_16e
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1}, Lek;->a(I)Les;

    move-result-object v4

    .line 302
    invoke-static {v5, v3, v4}, Leu;->b(ILjava/util/List;Les;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 303
    :pswitch_17d
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 304
    invoke-static {v3}, Leu;->c(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_4c2

    .line 305
    invoke-static {v5}, Lcn;->a(I)I

    move-result v4

    .line 306
    invoke-static {v3}, Lcn;->c(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_4c2

    .line 307
    :pswitch_196
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 308
    invoke-static {v3}, Leu;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_4c2

    .line 309
    invoke-static {v5}, Lcn;->a(I)I

    move-result v4

    .line 310
    invoke-static {v3}, Lcn;->c(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_4c2

    .line 311
    :pswitch_1af
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 312
    invoke-static {v3}, Leu;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_4c2

    .line 313
    invoke-static {v5}, Lcn;->a(I)I

    move-result v4

    .line 314
    invoke-static {v3}, Lcn;->c(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_4c2

    .line 315
    :pswitch_1c8
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 316
    invoke-static {v3}, Leu;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_4c2

    .line 317
    invoke-static {v5}, Lcn;->a(I)I

    move-result v4

    .line 318
    invoke-static {v3}, Lcn;->c(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_4c2

    .line 319
    :pswitch_1e1
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 320
    invoke-static {v3}, Leu;->d(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_4c2

    .line 321
    invoke-static {v5}, Lcn;->a(I)I

    move-result v4

    .line 322
    invoke-static {v3}, Lcn;->c(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_4c2

    .line 323
    :pswitch_1fa
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 324
    invoke-static {v3}, Leu;->f(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_4c2

    .line 325
    invoke-static {v5}, Lcn;->a(I)I

    move-result v4

    .line 326
    invoke-static {v3}, Lcn;->c(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_4c2

    .line 327
    :pswitch_213
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 328
    invoke-static {v3}, Leu;->j(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_4c2

    .line 329
    invoke-static {v5}, Lcn;->a(I)I

    move-result v4

    .line 330
    invoke-static {v3}, Lcn;->c(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_4c2

    .line 331
    :pswitch_22c
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 332
    invoke-static {v3}, Leu;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_4c2

    .line 333
    invoke-static {v5}, Lcn;->a(I)I

    move-result v4

    .line 334
    invoke-static {v3}, Lcn;->c(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_4c2

    .line 335
    :pswitch_245
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 336
    invoke-static {v3}, Leu;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_4c2

    .line 337
    invoke-static {v5}, Lcn;->a(I)I

    move-result v4

    .line 338
    invoke-static {v3}, Lcn;->c(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_4c2

    .line 339
    :pswitch_25e
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 340
    invoke-static {v3}, Leu;->e(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_4c2

    .line 341
    invoke-static {v5}, Lcn;->a(I)I

    move-result v4

    .line 342
    invoke-static {v3}, Lcn;->c(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_4c2

    .line 343
    :pswitch_277
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 344
    invoke-static {v3}, Leu;->b(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_4c2

    .line 345
    invoke-static {v5}, Lcn;->a(I)I

    move-result v4

    .line 346
    invoke-static {v3}, Lcn;->c(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_4c2

    .line 347
    :pswitch_290
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 348
    invoke-static {v3}, Leu;->a(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_4c2

    .line 349
    invoke-static {v5}, Lcn;->a(I)I

    move-result v4

    .line 350
    invoke-static {v3}, Lcn;->c(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_4c2

    .line 351
    :pswitch_2a9
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 352
    invoke-static {v3}, Leu;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_4c2

    .line 353
    invoke-static {v5}, Lcn;->a(I)I

    move-result v4

    .line 354
    invoke-static {v3}, Lcn;->c(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_4c2

    .line 355
    :pswitch_2c2
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 356
    invoke-static {v3}, Leu;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_4c2

    .line 357
    invoke-static {v5}, Lcn;->a(I)I

    move-result v4

    .line 358
    invoke-static {v3}, Lcn;->c(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_4c2

    .line 359
    :pswitch_2db
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->j(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 360
    :pswitch_2e6
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 361
    invoke-static {v5, v3}, Leu;->i(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 362
    :pswitch_2f1
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->f(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 363
    :pswitch_2fc
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->e(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 364
    :pswitch_307
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 365
    invoke-static {v5, v3}, Leu;->d(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 366
    :pswitch_312
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 367
    invoke-static {v5, v3}, Leu;->k(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 368
    :pswitch_31d
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 369
    invoke-static {v5, v3}, Leu;->b(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 370
    :pswitch_328
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1}, Lek;->a(I)Les;

    move-result-object v4

    .line 371
    invoke-static {v5, v3, v4}, Leu;->a(ILjava/util/List;Les;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 372
    :pswitch_337
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->a(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 373
    :pswitch_342
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->c(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 374
    :pswitch_34d
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->e(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 375
    :pswitch_358
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->f(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 376
    :pswitch_363
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 377
    invoke-static {v5, v3}, Leu;->g(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 378
    :pswitch_36e
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->l(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 379
    :pswitch_379
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->h(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 380
    :pswitch_384
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->e(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 381
    :pswitch_38f
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->f(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 382
    :pswitch_39a
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 383
    invoke-static {p1, v6, v7}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leh;

    .line 384
    invoke-direct {p0, v1}, Lek;->a(I)Les;

    move-result-object v4

    .line 385
    invoke-static {v5, v3, v4}, Lcn;->a(ILeh;Les;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 386
    :pswitch_3b1
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 387
    invoke-static {p1, v6, v7}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcn;->d(IJ)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 388
    :pswitch_3c2
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 389
    invoke-static {p1, v6, v7}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->d(II)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 390
    :pswitch_3d3
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 391
    invoke-static {v5}, Lcn;->p(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 392
    :pswitch_3e0
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 393
    invoke-static {v5}, Lcn;->o(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 394
    :pswitch_3ed
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 395
    invoke-static {p1, v6, v7}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->e(II)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 396
    :pswitch_3fe
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 397
    invoke-static {p1, v6, v7}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->c(II)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 398
    :pswitch_40f
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 399
    invoke-static {p1, v6, v7}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lck;

    .line 400
    invoke-static {v5, v3}, Lcn;->a(ILck;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 401
    :pswitch_422
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 402
    invoke-static {p1, v6, v7}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 403
    invoke-direct {p0, v1}, Lek;->a(I)Les;

    move-result-object v4

    invoke-static {v5, v3, v4}, Leu;->a(ILjava/lang/Object;Les;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 404
    :pswitch_437
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 405
    invoke-static {p1, v6, v7}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 406
    instance-of v4, v3, Lck;

    if-eqz v4, :cond_44e

    .line 407
    check-cast v3, Lck;

    invoke-static {v5, v3}, Lcn;->a(ILck;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 408
    :cond_44e
    check-cast v3, Ljava/lang/String;

    invoke-static {v5, v3}, Lcn;->a(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_4c2

    .line 409
    :pswitch_457
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 410
    invoke-static {v5}, Lcn;->j(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_4c2

    .line 411
    :pswitch_463
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 412
    invoke-static {v5}, Lcn;->l(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_4c2

    .line 413
    :pswitch_46f
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 414
    invoke-static {v5}, Lcn;->m(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_4c2

    .line 415
    :pswitch_47b
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 416
    invoke-static {p1, v6, v7}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->b(II)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_4c2

    .line 417
    :pswitch_48b
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 418
    invoke-static {p1, v6, v7}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcn;->c(IJ)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_4c2

    .line 419
    :pswitch_49b
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 420
    invoke-static {p1, v6, v7}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcn;->b(IJ)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_4c2

    .line 421
    :pswitch_4ab
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 422
    invoke-static {v5}, Lcn;->n(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_4c2

    .line 423
    :pswitch_4b7
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_4c2

    .line 424
    invoke-static {v5}, Lcn;->k(I)I

    move-result v3

    add-int/2addr v2, v3

    :cond_4c2
    :goto_4c2
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_4

    .line 422
    :cond_4c6
    iget-object v0, p0, Lek;->o:Lfh;

    .line 425
    invoke-static {v0, p1}, Lek;->a(Lfh;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    return v2

    :pswitch_data_4ce
    .packed-switch 0x0
        :pswitch_4b7
        :pswitch_4ab
        :pswitch_49b
        :pswitch_48b
        :pswitch_47b
        :pswitch_46f
        :pswitch_463
        :pswitch_457
        :pswitch_437
        :pswitch_422
        :pswitch_40f
        :pswitch_3fe
        :pswitch_3ed
        :pswitch_3e0
        :pswitch_3d3
        :pswitch_3c2
        :pswitch_3b1
        :pswitch_39a
        :pswitch_38f
        :pswitch_384
        :pswitch_379
        :pswitch_36e
        :pswitch_363
        :pswitch_358
        :pswitch_34d
        :pswitch_342
        :pswitch_337
        :pswitch_328
        :pswitch_31d
        :pswitch_312
        :pswitch_307
        :pswitch_2fc
        :pswitch_2f1
        :pswitch_2e6
        :pswitch_2db
        :pswitch_2c2
        :pswitch_2a9
        :pswitch_290
        :pswitch_277
        :pswitch_25e
        :pswitch_245
        :pswitch_22c
        :pswitch_213
        :pswitch_1fa
        :pswitch_1e1
        :pswitch_1c8
        :pswitch_1af
        :pswitch_196
        :pswitch_17d
        :pswitch_16e
        :pswitch_161
        :pswitch_154
        :pswitch_147
        :pswitch_136
        :pswitch_125
        :pswitch_114
        :pswitch_107
        :pswitch_fa
        :pswitch_ed
        :pswitch_cd
        :pswitch_b8
        :pswitch_a5
        :pswitch_94
        :pswitch_83
        :pswitch_76
        :pswitch_69
        :pswitch_58
        :pswitch_47
        :pswitch_30
    .end packed-switch
.end method

.method private static h(I)J
    .registers 3

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method private final i(I)I
    .registers 3

    iget v0, p0, Lek;->e:I

    if-lt p1, v0, :cond_e

    iget v0, p0, Lek;->f:I

    if-gt p1, v0, :cond_e

    const/4 v0, 0x0

    .line 1051
    invoke-direct {p0, p1, v0}, Lek;->b(II)I

    move-result p1

    return p1

    :cond_e
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .registers 10

    iget-object v0, p0, Lek;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v1, v0, :cond_251

    .line 428
    invoke-direct {p0, v1}, Lek;->e(I)I

    move-result v3

    .line 429
    invoke-direct {p0, v1}, Lek;->d(I)I

    move-result v4

    .line 430
    invoke-static {v3}, Lek;->h(I)J

    move-result-wide v5

    .line 431
    invoke-static {v3}, Lek;->g(I)I

    move-result v3

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_26e

    goto/16 :goto_24d

    .line 432
    :pswitch_1e
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24d

    mul-int/lit8 v2, v2, 0x35

    .line 433
    invoke-static {p1, v5, v6}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 434
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24d

    .line 435
    :pswitch_31
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24d

    mul-int/lit8 v2, v2, 0x35

    .line 436
    invoke-static {p1, v5, v6}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24d

    .line 437
    :pswitch_44
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24d

    mul-int/lit8 v2, v2, 0x35

    .line 438
    invoke-static {p1, v5, v6}, Lek;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24d

    .line 439
    :pswitch_53
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24d

    mul-int/lit8 v2, v2, 0x35

    .line 440
    invoke-static {p1, v5, v6}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24d

    .line 441
    :pswitch_66
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24d

    mul-int/lit8 v2, v2, 0x35

    .line 442
    invoke-static {p1, v5, v6}, Lek;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24d

    .line 443
    :pswitch_75
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24d

    mul-int/lit8 v2, v2, 0x35

    .line 444
    invoke-static {p1, v5, v6}, Lek;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24d

    .line 445
    :pswitch_84
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24d

    mul-int/lit8 v2, v2, 0x35

    .line 446
    invoke-static {p1, v5, v6}, Lek;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24d

    .line 447
    :pswitch_93
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24d

    mul-int/lit8 v2, v2, 0x35

    .line 448
    invoke-static {p1, v5, v6}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24d

    .line 449
    :pswitch_a6
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24d

    mul-int/lit8 v2, v2, 0x35

    .line 450
    invoke-static {p1, v5, v6}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 451
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24d

    .line 452
    :pswitch_b9
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24d

    mul-int/lit8 v2, v2, 0x35

    .line 453
    invoke-static {p1, v5, v6}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24d

    .line 454
    :pswitch_ce
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24d

    mul-int/lit8 v2, v2, 0x35

    .line 455
    invoke-static {p1, v5, v6}, Lek;->f(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Ldj;->a(Z)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24d

    .line 456
    :pswitch_e1
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24d

    mul-int/lit8 v2, v2, 0x35

    .line 457
    invoke-static {p1, v5, v6}, Lek;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24d

    .line 458
    :pswitch_f0
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24d

    mul-int/lit8 v2, v2, 0x35

    .line 459
    invoke-static {p1, v5, v6}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24d

    .line 460
    :pswitch_103
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24d

    mul-int/lit8 v2, v2, 0x35

    .line 461
    invoke-static {p1, v5, v6}, Lek;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24d

    .line 462
    :pswitch_112
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24d

    mul-int/lit8 v2, v2, 0x35

    .line 463
    invoke-static {p1, v5, v6}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24d

    .line 464
    :pswitch_125
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24d

    mul-int/lit8 v2, v2, 0x35

    .line 465
    invoke-static {p1, v5, v6}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24d

    .line 466
    :pswitch_138
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24d

    mul-int/lit8 v2, v2, 0x35

    .line 467
    invoke-static {p1, v5, v6}, Lek;->c(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24d

    .line 468
    :pswitch_14b
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24d

    mul-int/lit8 v2, v2, 0x35

    .line 469
    invoke-static {p1, v5, v6}, Lek;->b(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24d

    :pswitch_162
    mul-int/lit8 v2, v2, 0x35

    .line 470
    invoke-static {p1, v5, v6}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24d

    :pswitch_16f
    mul-int/lit8 v2, v2, 0x35

    .line 471
    invoke-static {p1, v5, v6}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24d

    .line 472
    :pswitch_17c
    invoke-static {p1, v5, v6}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_186

    .line 473
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_186
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto/16 :goto_24d

    :pswitch_18b
    mul-int/lit8 v2, v2, 0x35

    .line 474
    invoke-static {p1, v5, v6}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24d

    :pswitch_198
    mul-int/lit8 v2, v2, 0x35

    .line 475
    invoke-static {p1, v5, v6}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24d

    :pswitch_1a1
    mul-int/lit8 v2, v2, 0x35

    .line 476
    invoke-static {p1, v5, v6}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24d

    :pswitch_1ae
    mul-int/lit8 v2, v2, 0x35

    .line 477
    invoke-static {p1, v5, v6}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24d

    :pswitch_1b7
    mul-int/lit8 v2, v2, 0x35

    .line 478
    invoke-static {p1, v5, v6}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24d

    :pswitch_1c0
    mul-int/lit8 v2, v2, 0x35

    .line 479
    invoke-static {p1, v5, v6}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24d

    :pswitch_1c9
    mul-int/lit8 v2, v2, 0x35

    .line 480
    invoke-static {p1, v5, v6}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24d

    .line 481
    :pswitch_1d6
    invoke-static {p1, v5, v6}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1e0

    .line 482
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_1e0
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_24d

    :pswitch_1e4
    mul-int/lit8 v2, v2, 0x35

    .line 483
    invoke-static {p1, v5, v6}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_24d

    :pswitch_1f2
    mul-int/lit8 v2, v2, 0x35

    .line 484
    invoke-static {p1, v5, v6}, Lfr;->c(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Ldj;->a(Z)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_24d

    :pswitch_1fe
    mul-int/lit8 v2, v2, 0x35

    .line 485
    invoke-static {p1, v5, v6}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_24d

    :pswitch_206
    mul-int/lit8 v2, v2, 0x35

    .line 486
    invoke-static {p1, v5, v6}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_24d

    :pswitch_212
    mul-int/lit8 v2, v2, 0x35

    .line 487
    invoke-static {p1, v5, v6}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_24d

    :pswitch_21a
    mul-int/lit8 v2, v2, 0x35

    .line 488
    invoke-static {p1, v5, v6}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_24d

    :pswitch_226
    mul-int/lit8 v2, v2, 0x35

    .line 489
    invoke-static {p1, v5, v6}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_24d

    :pswitch_232
    mul-int/lit8 v2, v2, 0x35

    .line 490
    invoke-static {p1, v5, v6}, Lfr;->d(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_24d

    :pswitch_23e
    mul-int/lit8 v2, v2, 0x35

    .line 491
    invoke-static {p1, v5, v6}, Lfr;->e(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 492
    invoke-static {v3, v4}, Ldj;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    :cond_24d
    :goto_24d
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_5

    :cond_251
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lek;->o:Lfh;

    .line 493
    invoke-virtual {v0, p1}, Lfh;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean v0, p0, Lek;->h:Z

    if-eqz v0, :cond_26d

    mul-int/lit8 v2, v2, 0x35

    .line 494
    invoke-static {p1}, Lej;->b(Ljava/lang/Object;)Lcu;

    move-result-object p1

    invoke-virtual {p1}, Lcu;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_26d
    return v2

    :pswitch_data_26e
    .packed-switch 0x0
        :pswitch_23e
        :pswitch_232
        :pswitch_226
        :pswitch_21a
        :pswitch_212
        :pswitch_206
        :pswitch_1fe
        :pswitch_1f2
        :pswitch_1e4
        :pswitch_1d6
        :pswitch_1c9
        :pswitch_1c0
        :pswitch_1b7
        :pswitch_1ae
        :pswitch_1a1
        :pswitch_198
        :pswitch_18b
        :pswitch_17c
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_162
        :pswitch_14b
        :pswitch_138
        :pswitch_125
        :pswitch_112
        :pswitch_103
        :pswitch_f0
        :pswitch_e1
        :pswitch_ce
        :pswitch_b9
        :pswitch_a6
        :pswitch_93
        :pswitch_84
        :pswitch_75
        :pswitch_66
        :pswitch_53
        :pswitch_44
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method

.method final a(Ljava/lang/Object;[BIIILby;)I
    .registers 35

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    move-object/from16 v13, p2

    move/from16 v14, p4

    move/from16 v12, p5

    move-object/from16 v10, p6

    sget-object v11, Lek;->b:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v1, p3

    move/from16 v2, v16

    move v4, v2

    move v6, v4

    const/4 v3, -0x1

    const v7, 0xfffff

    :goto_1a
    if-ge v1, v14, :cond_506

    add-int/lit8 v2, v1, 0x1

    .line 803
    aget-byte v1, v13, v1

    if-gez v1, :cond_2b

    .line 804
    invoke-static {v1, v13, v2, v10}, Leb;->a(I[BILby;)I

    move-result v1

    iget v2, v10, Lby;->a:I

    move v5, v2

    move v2, v1

    goto :goto_2c

    :cond_2b
    move v5, v1

    :goto_2c
    ushr-int/lit8 v1, v5, 0x3

    and-int/lit8 v8, v5, 0x7

    const/4 v9, 0x3

    if-le v1, v3, :cond_3a

    div-int/2addr v4, v9

    .line 805
    invoke-direct {v15, v1, v4}, Lek;->a(II)I

    move-result v3

    const/4 v4, -0x1

    goto :goto_3f

    .line 806
    :cond_3a
    invoke-direct {v15, v1}, Lek;->i(I)I

    move-result v3

    const/4 v4, -0x1

    :goto_3f
    if-eq v3, v4, :cond_483

    .line 805
    iget-object v4, v15, Lek;->c:[I

    add-int/lit8 v19, v3, 0x1

    .line 807
    aget v4, v4, v19

    .line 808
    invoke-static {v4}, Lek;->g(I)I

    move-result v9

    move/from16 v20, v1

    move/from16 v19, v2

    .line 809
    invoke-static {v4}, Lek;->h(I)J

    move-result-wide v1

    move-wide/from16 v21, v1

    const/16 v1, 0x11

    if-gt v9, v1, :cond_311

    iget-object v1, v15, Lek;->c:[I

    add-int/lit8 v23, v3, 0x2

    .line 810
    aget v1, v1, v23

    ushr-int/lit8 v23, v1, 0x14

    const/4 v2, 0x1

    shl-int v23, v2, v23

    const v12, 0xfffff

    and-int/2addr v1, v12

    if-ne v1, v7, :cond_70

    move/from16 v17, v3

    move/from16 v26, v7

    move v7, v6

    goto :goto_83

    :cond_70
    if-ne v7, v12, :cond_75

    move/from16 v17, v3

    goto :goto_7b

    :cond_75
    move/from16 v17, v3

    int-to-long v2, v7

    .line 811
    invoke-virtual {v11, v0, v2, v3, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_7b
    int-to-long v2, v1

    .line 812
    invoke-virtual {v11, v0, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    move/from16 v26, v1

    move v7, v2

    :goto_83
    const/4 v1, 0x5

    packed-switch v9, :pswitch_data_5cc

    move v12, v5

    move/from16 v9, v17

    move/from16 v3, v19

    move-wide/from16 v5, v21

    const/4 v1, 0x3

    const/16 v17, -0x1

    if-ne v8, v1, :cond_301

    .line 845
    invoke-direct {v15, v9}, Lek;->a(I)Les;

    move-result-object v1

    shl-int/lit8 v2, v20, 0x3

    or-int/lit8 v8, v2, 0x4

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-wide v13, v5

    move v5, v8

    move-object/from16 v6, p6

    .line 846
    invoke-static/range {v1 .. v6}, Leb;->a(Les;[BIIILby;)I

    move-result v1

    and-int v2, v7, v23

    if-nez v2, :cond_2e4

    iget-object v2, v10, Lby;->c:Ljava/lang/Object;

    .line 847
    invoke-virtual {v11, v0, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2f1

    :pswitch_b2
    if-nez v8, :cond_df

    move/from16 v2, v19

    .line 813
    invoke-static {v13, v2, v10}, Leb;->b([BILby;)I

    move-result v8

    iget-wide v1, v10, Lby;->b:J

    .line 814
    invoke-static {v1, v2}, Lcl;->a(J)J

    move-result-wide v24

    move/from16 v9, v20

    move-wide/from16 v3, v21

    move-object v1, v11

    move-object/from16 v2, p1

    move/from16 v6, v17

    const/16 v17, -0x1

    move v12, v5

    move v9, v6

    move-wide/from16 v5, v24

    .line 815
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v7, v23

    move v1, v8

    move v4, v9

    move v2, v12

    move/from16 v3, v20

    move/from16 v7, v26

    move/from16 v12, p5

    goto/16 :goto_1a

    :cond_df
    move v12, v5

    move/from16 v9, v17

    const/16 v17, -0x1

    move/from16 v3, v19

    goto/16 :goto_301

    :pswitch_e8
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v3, v21

    const/16 v17, -0x1

    if-nez v8, :cond_10c

    .line 816
    invoke-static {v13, v2, v10}, Leb;->a([BILby;)I

    move-result v1

    iget v2, v10, Lby;->a:I

    .line 817
    invoke-static {v2}, Lcl;->a(I)I

    move-result v2

    .line 818
    invoke-virtual {v11, v0, v3, v4, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v6, v7, v23

    move v4, v9

    move v2, v12

    move/from16 v3, v20

    move/from16 v7, v26

    move/from16 v12, p5

    goto/16 :goto_1a

    :cond_10c
    move v3, v2

    goto/16 :goto_301

    :pswitch_10f
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v3, v21

    const/16 v17, -0x1

    if-nez v8, :cond_153

    .line 819
    invoke-static {v13, v2, v10}, Leb;->a([BILby;)I

    move-result v1

    iget v2, v10, Lby;->a:I

    .line 820
    invoke-direct {v15, v9}, Lek;->c(I)Ldh;

    move-result-object v5

    if-eqz v5, :cond_144

    .line 821
    invoke-interface {v5, v2}, Ldh;->a(I)Z

    move-result v5

    if-eqz v5, :cond_12d

    goto :goto_144

    .line 823
    :cond_12d
    invoke-static/range {p1 .. p1}, Lek;->c(Ljava/lang/Object;)Lfi;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v12, v2}, Lfi;->a(ILjava/lang/Object;)V

    move v6, v7

    move v4, v9

    move v2, v12

    move/from16 v3, v20

    move/from16 v7, v26

    move/from16 v12, p5

    goto/16 :goto_1a

    .line 822
    :cond_144
    :goto_144
    invoke-virtual {v11, v0, v3, v4, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v6, v7, v23

    move v4, v9

    move v2, v12

    move/from16 v3, v20

    move/from16 v7, v26

    move/from16 v12, p5

    goto/16 :goto_1a

    :cond_153
    move v3, v2

    goto/16 :goto_301

    :pswitch_156
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v3, v21

    const/4 v1, 0x2

    const/16 v17, -0x1

    if-ne v8, v1, :cond_177

    .line 824
    invoke-static {v13, v2, v10}, Leb;->e([BILby;)I

    move-result v1

    iget-object v2, v10, Lby;->c:Ljava/lang/Object;

    .line 825
    invoke-virtual {v11, v0, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v6, v7, v23

    move v4, v9

    move v2, v12

    move/from16 v3, v20

    move/from16 v7, v26

    move/from16 v12, p5

    goto/16 :goto_1a

    :cond_177
    move v3, v2

    goto/16 :goto_301

    :pswitch_17a
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v3, v21

    const/4 v1, 0x2

    const/16 v17, -0x1

    if-ne v8, v1, :cond_1bd

    .line 826
    invoke-direct {v15, v9}, Lek;->a(I)Les;

    move-result-object v1

    .line 827
    invoke-static {v1, v13, v2, v14, v10}, Leb;->a(Les;[BIILby;)I

    move-result v1

    and-int v2, v7, v23

    if-nez v2, :cond_198

    iget-object v2, v10, Lby;->c:Ljava/lang/Object;

    .line 828
    invoke-virtual {v11, v0, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1a5

    .line 829
    :cond_198
    invoke-virtual {v11, v0, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    iget-object v5, v10, Lby;->c:Ljava/lang/Object;

    .line 830
    invoke-static {v2, v5}, Ldj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 831
    invoke-virtual {v11, v0, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1a5
    or-int v6, v7, v23

    move v4, v9

    move v2, v12

    move/from16 v3, v20

    move/from16 v7, v26

    move/from16 v12, p5

    goto/16 :goto_1a

    :pswitch_1b1
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v5, v21

    const/4 v1, 0x2

    const/16 v17, -0x1

    if-eq v8, v1, :cond_1c0

    :cond_1bd
    move v3, v2

    goto/16 :goto_301

    :cond_1c0
    const/high16 v1, 0x20000000

    and-int/2addr v1, v4

    if-eqz v1, :cond_1ca

    .line 833
    invoke-static {v13, v2, v10}, Leb;->d([BILby;)I

    move-result v1

    goto :goto_1ce

    .line 832
    :cond_1ca
    invoke-static {v13, v2, v10}, Leb;->c([BILby;)I

    move-result v1

    .line 833
    :goto_1ce
    iget-object v2, v10, Lby;->c:Ljava/lang/Object;

    .line 834
    invoke-virtual {v11, v0, v5, v6, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v6, v7, v23

    move v4, v9

    move v2, v12

    move/from16 v3, v20

    move/from16 v7, v26

    move/from16 v12, p5

    goto/16 :goto_1a

    :pswitch_1df
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    if-nez v8, :cond_209

    .line 835
    invoke-static {v13, v2, v10}, Leb;->b([BILby;)I

    move-result v1

    iget-wide v2, v10, Lby;->b:J

    const-wide/16 v18, 0x0

    cmp-long v2, v2, v18

    if-eqz v2, :cond_1f8

    const/4 v2, 0x1

    goto :goto_1fa

    :cond_1f8
    move/from16 v2, v16

    .line 836
    :goto_1fa
    invoke-static {v0, v5, v6, v2}, Lfr;->a(Ljava/lang/Object;JZ)V

    or-int v6, v7, v23

    move v4, v9

    move v2, v12

    move/from16 v3, v20

    move/from16 v7, v26

    move/from16 v12, p5

    goto/16 :goto_1a

    :cond_209
    move v3, v2

    goto/16 :goto_301

    :pswitch_20c
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    if-ne v8, v1, :cond_22c

    .line 837
    invoke-static {v13, v2}, Leb;->a([BI)I

    move-result v1

    invoke-virtual {v11, v0, v5, v6, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v2, 0x4

    or-int v6, v7, v23

    move v4, v9

    move v2, v12

    move/from16 v3, v20

    move/from16 v7, v26

    move/from16 v12, p5

    goto/16 :goto_1a

    :cond_22c
    move v3, v2

    goto/16 :goto_301

    :pswitch_22f
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v5, v21

    const/4 v1, 0x1

    const/16 v17, -0x1

    if-ne v8, v1, :cond_257

    .line 838
    invoke-static {v13, v2}, Leb;->b([BI)J

    move-result-wide v18

    move-object v1, v11

    move v8, v2

    move-object/from16 v2, p1

    move-wide v3, v5

    move-wide/from16 v5, v18

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v1, v8, 0x8

    or-int v6, v7, v23

    move v4, v9

    move v2, v12

    move/from16 v3, v20

    move/from16 v7, v26

    move/from16 v12, p5

    goto/16 :goto_1a

    :cond_257
    move v3, v2

    goto/16 :goto_301

    :pswitch_25a
    move v12, v5

    move/from16 v9, v17

    move/from16 v3, v19

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    if-nez v8, :cond_301

    .line 839
    invoke-static {v13, v3, v10}, Leb;->a([BILby;)I

    move-result v1

    iget v2, v10, Lby;->a:I

    .line 840
    invoke-virtual {v11, v0, v5, v6, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v6, v7, v23

    move v4, v9

    move v2, v12

    move/from16 v3, v20

    move/from16 v7, v26

    move/from16 v12, p5

    goto/16 :goto_1a

    :pswitch_27a
    move v12, v5

    move/from16 v9, v17

    move/from16 v3, v19

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    if-nez v8, :cond_301

    .line 841
    invoke-static {v13, v3, v10}, Leb;->b([BILby;)I

    move-result v8

    iget-wide v3, v10, Lby;->b:J

    move-object v1, v11

    move-object/from16 v2, p1

    move-wide/from16 v18, v3

    move-wide v3, v5

    move-wide/from16 v5, v18

    .line 842
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v7, v23

    move v1, v8

    move v4, v9

    move v2, v12

    move/from16 v3, v20

    move/from16 v7, v26

    move/from16 v12, p5

    goto/16 :goto_1a

    :pswitch_2a3
    move v12, v5

    move/from16 v9, v17

    move/from16 v3, v19

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    if-ne v8, v1, :cond_301

    .line 843
    invoke-static {v13, v3}, Leb;->d([BI)F

    move-result v1

    invoke-static {v0, v5, v6, v1}, Lfr;->a(Ljava/lang/Object;JF)V

    add-int/lit8 v1, v3, 0x4

    or-int v6, v7, v23

    move v4, v9

    move v2, v12

    move/from16 v3, v20

    move/from16 v7, v26

    move/from16 v12, p5

    goto/16 :goto_1a

    :pswitch_2c3
    move v12, v5

    move/from16 v9, v17

    move/from16 v3, v19

    move-wide/from16 v5, v21

    const/4 v1, 0x1

    const/16 v17, -0x1

    if-ne v8, v1, :cond_301

    .line 844
    invoke-static {v13, v3}, Leb;->c([BI)D

    move-result-wide v1

    invoke-static {v0, v5, v6, v1, v2}, Lfr;->a(Ljava/lang/Object;JD)V

    add-int/lit8 v1, v3, 0x8

    or-int v6, v7, v23

    move v4, v9

    move v2, v12

    move/from16 v3, v20

    move/from16 v7, v26

    move/from16 v12, p5

    goto/16 :goto_1a

    .line 848
    :cond_2e4
    invoke-virtual {v11, v0, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v10, Lby;->c:Ljava/lang/Object;

    .line 849
    invoke-static {v2, v3}, Ldj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 850
    invoke-virtual {v11, v0, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_2f1
    or-int v6, v7, v23

    move v4, v9

    move v2, v12

    move/from16 v3, v20

    move/from16 v7, v26

    move/from16 v12, p5

    move-object/from16 v13, p2

    move/from16 v14, p4

    goto/16 :goto_1a

    :cond_301
    :goto_301
    move-object v8, v0

    move/from16 v22, v7

    move-object v10, v15

    move/from16 v21, v20

    move/from16 v0, p5

    move/from16 v27, v12

    move v12, v9

    move-object v9, v11

    move/from16 v11, v27

    goto/16 :goto_494

    :cond_311
    move v12, v5

    move v2, v9

    move/from16 v5, v20

    move-wide/from16 v13, v21

    const/16 v17, -0x1

    move v9, v3

    move/from16 v3, v19

    const/16 v1, 0x1b

    if-eq v2, v1, :cond_414

    const/16 v1, 0x31

    if-gt v2, v1, :cond_377

    move-object/from16 v18, v11

    int-to-long v10, v4

    move-object/from16 v1, p0

    move/from16 v19, v2

    move-object/from16 v2, p1

    move v4, v3

    move-object/from16 v3, p2

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v5, p4

    move/from16 v22, v6

    move v6, v12

    move/from16 v26, v7

    move/from16 v7, v21

    move/from16 p3, v9

    move-object/from16 v0, v18

    move/from16 v23, v12

    move/from16 v0, p5

    move/from16 v12, v19

    move-object/from16 v15, p6

    .line 858
    invoke-direct/range {v1 .. v15}, Lek;->a(Ljava/lang/Object;[BIIIIIIJIJLby;)I

    move-result v1

    move/from16 v15, v20

    if-eq v1, v15, :cond_36a

    move-object/from16 v13, p2

    move/from16 v4, p3

    move v12, v0

    move-object/from16 v11, v18

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v2, v23

    move/from16 v7, v26

    move-object/from16 v0, p1

    move-object/from16 v10, p6

    move/from16 v14, p4

    move-object/from16 v15, p0

    goto/16 :goto_1a

    :cond_36a
    move/from16 v12, p3

    move v3, v1

    move-object/from16 v9, v18

    move/from16 v11, v23

    move-object/from16 v8, p1

    move-object/from16 v10, p0

    goto/16 :goto_494

    :cond_377
    move/from16 v19, v2

    move v15, v3

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v26, v7

    move/from16 p3, v9

    move-object/from16 v18, v11

    move/from16 v23, v12

    move/from16 v0, p5

    const/16 v1, 0x32

    move/from16 v10, v19

    if-eq v10, v1, :cond_3cd

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v9, v4

    move v4, v15

    move/from16 v5, p4

    move/from16 v6, v23

    move/from16 v7, v21

    move-wide v11, v13

    move/from16 v13, p3

    move-object/from16 v14, p6

    .line 859
    invoke-direct/range {v1 .. v14}, Lek;->a(Ljava/lang/Object;[BIIIIIIIJILby;)I

    move-result v1

    if-eq v1, v15, :cond_3c0

    move-object/from16 v13, p2

    move/from16 v4, p3

    move v12, v0

    move-object/from16 v11, v18

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v2, v23

    move/from16 v7, v26

    move-object/from16 v0, p1

    move-object/from16 v10, p6

    move/from16 v14, p4

    move-object/from16 v15, p0

    goto/16 :goto_1a

    :cond_3c0
    move/from16 v12, p3

    move v3, v1

    move-object/from16 v9, v18

    move/from16 v11, v23

    move-object/from16 v8, p1

    move-object/from16 v10, p0

    goto/16 :goto_494

    :cond_3cd
    const/4 v1, 0x2

    if-eq v8, v1, :cond_3da

    move/from16 v11, p3

    move-object/from16 v9, v18

    move-object/from16 v8, p1

    move-object/from16 v10, p0

    goto/16 :goto_47e

    :cond_3da
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v15

    move/from16 v5, p4

    move/from16 v6, p3

    move-wide v7, v13

    move-object/from16 v9, p6

    .line 860
    invoke-direct/range {v1 .. v9}, Lek;->a(Ljava/lang/Object;[BIIIJLby;)I

    move-result v1

    if-eq v1, v15, :cond_407

    move-object/from16 v13, p2

    move/from16 v4, p3

    move v12, v0

    move-object/from16 v11, v18

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v2, v23

    move/from16 v7, v26

    move-object/from16 v0, p1

    move-object/from16 v10, p6

    move/from16 v14, p4

    move-object/from16 v15, p0

    goto/16 :goto_1a

    :cond_407
    move/from16 v12, p3

    move v3, v1

    move-object/from16 v9, v18

    move/from16 v11, v23

    move-object/from16 v8, p1

    move-object/from16 v10, p0

    goto/16 :goto_494

    :cond_414
    move v15, v3

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v26, v7

    move/from16 p3, v9

    move-object/from16 v18, v11

    move/from16 v23, v12

    move/from16 v0, p5

    const/4 v1, 0x2

    if-ne v8, v1, :cond_476

    move-object/from16 v9, v18

    move-object/from16 v8, p1

    .line 851
    invoke-virtual {v9, v8, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldi;

    .line 852
    invoke-interface {v1}, Ldi;->a()Z

    move-result v2

    if-nez v2, :cond_44d

    .line 853
    invoke-interface {v1}, Ldi;->size()I

    move-result v2

    if-eqz v2, :cond_43e

    add-int/2addr v2, v2

    goto :goto_440

    :cond_43e
    const/16 v2, 0xa

    .line 854
    :goto_440
    invoke-interface {v1, v2}, Ldi;->a(I)Ldi;

    move-result-object v1

    .line 855
    invoke-virtual {v9, v8, v13, v14, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v11, p3

    move-object v6, v1

    move-object/from16 v10, p0

    goto :goto_452

    :cond_44d
    move/from16 v11, p3

    move-object v6, v1

    move-object/from16 v10, p0

    .line 856
    :goto_452
    invoke-direct {v10, v11}, Lek;->a(I)Les;

    move-result-object v1

    move/from16 v2, v23

    move-object/from16 v3, p2

    move v4, v15

    move/from16 v5, p4

    move-object/from16 v7, p6

    .line 857
    invoke-static/range {v1 .. v7}, Leb;->a(Les;I[BIILdi;Lby;)I

    move-result v1

    move-object/from16 v13, p2

    move v12, v0

    move-object v0, v8

    move-object v15, v10

    move v4, v11

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v7, v26

    move-object/from16 v10, p6

    move/from16 v14, p4

    move-object v11, v9

    goto/16 :goto_1a

    :cond_476
    move/from16 v11, p3

    move-object/from16 v9, v18

    move-object/from16 v8, p1

    move-object/from16 v10, p0

    :goto_47e
    move v12, v11

    move v3, v15

    move/from16 v11, v23

    goto :goto_494

    :cond_483
    move-object v8, v0

    move/from16 v21, v1

    move/from16 v17, v4

    move/from16 v22, v6

    move/from16 v26, v7

    move-object v9, v11

    move v0, v12

    move-object v10, v15

    move v15, v2

    move v11, v5

    move v3, v15

    move/from16 v12, v16

    :goto_494
    if-eq v11, v0, :cond_497

    goto :goto_4a2

    :cond_497
    if-eqz v0, :cond_4a2

    move/from16 v2, v22

    move/from16 v1, v26

    const v4, 0xfffff

    goto/16 :goto_517

    .line 850
    :cond_4a2
    :goto_4a2
    iget-boolean v1, v10, Lek;->h:Z

    if-nez v1, :cond_4ab

    move/from16 v14, v21

    move-object/from16 v13, p6

    goto :goto_4e5

    :cond_4ab
    move-object/from16 v13, p6

    .line 863
    iget-object v1, v13, Lby;->d:Lcs;

    .line 861
    invoke-static {}, Lcs;->a()Lcs;

    move-result-object v2

    if-eq v1, v2, :cond_4e3

    iget-object v1, v10, Lek;->g:Leh;

    iget-object v2, v13, Lby;->d:Lcs;

    move/from16 v14, v21

    .line 864
    invoke-virtual {v2, v1, v14}, Lcs;->a(Leh;I)Lcq;

    move-result-object v6

    if-nez v6, :cond_4d1

    .line 865
    invoke-static/range {p1 .. p1}, Lek;->c(Ljava/lang/Object;)Lfi;

    move-result-object v5

    move v1, v11

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    .line 866
    invoke-static/range {v1 .. v6}, Leb;->a(I[BIILfi;Lby;)I

    move-result v1

    goto :goto_4f4

    .line 867
    :cond_4d1
    move-object v5, v8

    check-cast v5, Ldc;

    invoke-virtual {v5}, Ldc;->d()Lcu;

    move v1, v11

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v7, p6

    .line 868
    invoke-static/range {v1 .. v7}, Leb;->a(I[BIILdc;Lcq;Lby;)I

    move-result v1

    goto :goto_4f4

    :cond_4e3
    move/from16 v14, v21

    .line 862
    :goto_4e5
    invoke-static/range {p1 .. p1}, Lek;->c(Ljava/lang/Object;)Lfi;

    move-result-object v5

    move v1, v11

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    .line 863
    invoke-static/range {v1 .. v6}, Leb;->a(I[BIILfi;Lby;)I

    move-result v1

    :goto_4f4
    move-object v15, v10

    move v2, v11

    move v4, v12

    move-object v10, v13

    move v3, v14

    move/from16 v6, v22

    move/from16 v7, v26

    move/from16 v14, p4

    move-object/from16 v13, p2

    move v12, v0

    move-object v0, v8

    move-object v11, v9

    goto/16 :goto_1a

    :cond_506
    move-object v8, v0

    move/from16 v22, v6

    move/from16 v26, v7

    move-object v9, v11

    move v0, v12

    move-object v10, v15

    move v3, v1

    move v11, v2

    move/from16 v2, v22

    move/from16 v1, v26

    const v4, 0xfffff

    :goto_517
    if-ne v1, v4, :cond_51a

    goto :goto_51e

    :cond_51a
    int-to-long v4, v1

    .line 869
    invoke-virtual {v9, v8, v4, v5, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 868
    :goto_51e
    iget v1, v10, Lek;->l:I

    const/4 v2, 0x0

    :goto_521
    iget v4, v10, Lek;->m:I

    if-ge v1, v4, :cond_5ac

    iget-object v4, v10, Lek;->k:[I

    .line 870
    aget v4, v4, v1

    .line 871
    invoke-direct {v10, v4}, Lek;->d(I)I

    move-result v5

    .line 872
    invoke-direct {v10, v4}, Lek;->e(I)I

    move-result v6

    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v6

    .line 873
    invoke-static {v8, v6, v7}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_53c

    goto :goto_5a8

    .line 874
    :cond_53c
    invoke-direct {v10, v4}, Lek;->c(I)Ldh;

    move-result-object v7

    if-eqz v7, :cond_5a8

    .line 875
    invoke-static {v6}, Lff;->c(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    .line 876
    invoke-direct {v10, v4}, Lek;->b(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lff;->b(Ljava/lang/Object;)Lea;

    move-result-object v4

    .line 877
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_556
    :goto_556
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5a8

    .line 878
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 879
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v7, v12}, Ldh;->a(I)Z

    move-result v12

    if-nez v12, :cond_556

    if-eqz v2, :cond_575

    goto :goto_579

    .line 880
    :cond_575
    invoke-static {}, Lfh;->a()Ljava/lang/Object;

    move-result-object v2

    .line 881
    :goto_579
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v4, v12, v13}, Leb;->a(Lea;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    .line 882
    invoke-static {v12}, Lck;->d(I)Lcg;

    move-result-object v12

    iget-object v13, v12, Lcg;->a:Lcn;

    .line 883
    :try_start_58b
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v13, v4, v14, v9}, Leb;->a(Lcn;Lea;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_596
    .catch Ljava/io/IOException; {:try_start_58b .. :try_end_596} :catch_5a1

    .line 884
    invoke-virtual {v12}, Lcg;->a()Lck;

    move-result-object v9

    invoke-static {v2, v5, v9}, Lfh;->a(Ljava/lang/Object;ILck;)V

    .line 885
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_556

    :catch_5a1
    move-exception v0

    .line 806
    new-instance v1, Ljava/lang/RuntimeException;

    .line 886
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_5a8
    :goto_5a8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_521

    :cond_5ac
    if-eqz v2, :cond_5b3

    .line 880
    iget-object v1, v10, Lek;->o:Lfh;

    .line 887
    invoke-virtual {v1, v8, v2}, Lfh;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5b3
    if-eqz v0, :cond_5c1

    move/from16 v1, p4

    if-gt v3, v1, :cond_5bc

    if-ne v11, v0, :cond_5bc

    goto :goto_5c5

    .line 889
    :cond_5bc
    invoke-static {}, Ldl;->e()Ldl;

    move-result-object v0

    throw v0

    :cond_5c1
    move/from16 v1, p4

    if-ne v3, v1, :cond_5c6

    :goto_5c5
    return v3

    .line 888
    :cond_5c6
    invoke-static {}, Ldl;->e()Ldl;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_5cc
    .packed-switch 0x0
        :pswitch_2c3
        :pswitch_2a3
        :pswitch_27a
        :pswitch_27a
        :pswitch_25a
        :pswitch_22f
        :pswitch_20c
        :pswitch_1df
        :pswitch_1b1
        :pswitch_17a
        :pswitch_156
        :pswitch_25a
        :pswitch_10f
        :pswitch_20c
        :pswitch_22f
        :pswitch_e8
        :pswitch_b2
    .end packed-switch
.end method

.method public final a()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lek;->g:Leh;

    .line 650
    invoke-static {v0}, Lfs;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lgb;)V
    .registers 15

    iget-boolean v0, p0, Lek;->i:Z

    if-eqz v0, :cond_5a1

    iget-boolean v0, p0, Lek;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 1223
    invoke-static {p1}, Lej;->b(Ljava/lang/Object;)Lcu;

    move-result-object v0

    .line 1224
    invoke-virtual {v0}, Lcu;->a()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1225
    invoke-virtual {v0}, Lcu;->d()Ljava/util/Iterator;

    move-result-object v0

    .line 1226
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_20

    :cond_1e
    move-object v0, v1

    move-object v2, v0

    :goto_20
    iget-object v3, p0, Lek;->c:[I

    array-length v3, v3

    const/4 v4, 0x0

    move-object v5, v2

    move v2, v4

    :goto_26
    if-ge v2, v3, :cond_586

    .line 1227
    invoke-direct {p0, v2}, Lek;->e(I)I

    move-result v6

    .line 1228
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    :goto_30
    if-nez v5, :cond_33

    goto :goto_4b

    .line 1229
    :cond_33
    invoke-static {v5}, Lej;->a(Ljava/util/Map$Entry;)I

    move-result v8

    if-gt v8, v7, :cond_4b

    .line 1230
    invoke-static {p2, v5}, Lej;->a(Lgb;Ljava/util/Map$Entry;)V

    .line 1231
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_30

    :cond_49
    move-object v5, v1

    goto :goto_30

    .line 1232
    :cond_4b
    :goto_4b
    invoke-static {v6}, Lek;->g(I)I

    move-result v8

    const/4 v9, 0x1

    packed-switch v8, :pswitch_data_5a6

    goto/16 :goto_582

    .line 1233
    :pswitch_55
    invoke-direct {p0, p1, v7, v2}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1234
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 1235
    invoke-direct {p0, v2}, Lek;->a(I)Les;

    move-result-object v8

    .line 1236
    invoke-interface {p2, v7, v6, v8}, Lgb;->b(ILjava/lang/Object;Les;)V

    goto/16 :goto_582

    .line 1237
    :pswitch_6c
    invoke-direct {p0, p1, v7, v2}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1238
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lgb;->e(IJ)V

    goto/16 :goto_582

    .line 1239
    :pswitch_7f
    invoke-direct {p0, p1, v7, v2}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1240
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->d(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->f(II)V

    goto/16 :goto_582

    .line 1241
    :pswitch_92
    invoke-direct {p0, p1, v7, v2}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1242
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lgb;->b(IJ)V

    goto/16 :goto_582

    .line 1243
    :pswitch_a5
    invoke-direct {p0, p1, v7, v2}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1244
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->d(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->a(II)V

    goto/16 :goto_582

    .line 1245
    :pswitch_b8
    invoke-direct {p0, p1, v7, v2}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1246
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->d(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->b(II)V

    goto/16 :goto_582

    .line 1247
    :pswitch_cb
    invoke-direct {p0, p1, v7, v2}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1248
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->d(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->e(II)V

    goto/16 :goto_582

    .line 1249
    :pswitch_de
    invoke-direct {p0, p1, v7, v2}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1250
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lck;

    .line 1251
    invoke-interface {p2, v7, v6}, Lgb;->a(ILck;)V

    goto/16 :goto_582

    .line 1252
    :pswitch_f3
    invoke-direct {p0, p1, v7, v2}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1253
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 1254
    invoke-direct {p0, v2}, Lek;->a(I)Les;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lgb;->a(ILjava/lang/Object;Les;)V

    goto/16 :goto_582

    .line 1255
    :pswitch_10a
    invoke-direct {p0, p1, v7, v2}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1256
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6, p2}, Lek;->a(ILjava/lang/Object;Lgb;)V

    goto/16 :goto_582

    .line 1257
    :pswitch_11d
    invoke-direct {p0, p1, v7, v2}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1258
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->f(Ljava/lang/Object;J)Z

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->a(IZ)V

    goto/16 :goto_582

    .line 1259
    :pswitch_130
    invoke-direct {p0, p1, v7, v2}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1260
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->d(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->d(II)V

    goto/16 :goto_582

    .line 1261
    :pswitch_143
    invoke-direct {p0, p1, v7, v2}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1262
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lgb;->d(IJ)V

    goto/16 :goto_582

    .line 1263
    :pswitch_156
    invoke-direct {p0, p1, v7, v2}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1264
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->d(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->c(II)V

    goto/16 :goto_582

    .line 1265
    :pswitch_169
    invoke-direct {p0, p1, v7, v2}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1266
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lgb;->c(IJ)V

    goto/16 :goto_582

    .line 1267
    :pswitch_17c
    invoke-direct {p0, p1, v7, v2}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1268
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lgb;->a(IJ)V

    goto/16 :goto_582

    .line 1269
    :pswitch_18f
    invoke-direct {p0, p1, v7, v2}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1270
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->c(Ljava/lang/Object;J)F

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->a(IF)V

    goto/16 :goto_582

    .line 1271
    :pswitch_1a2
    invoke-direct {p0, p1, v7, v2}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1272
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->b(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lgb;->a(ID)V

    goto/16 :goto_582

    .line 1273
    :pswitch_1b5
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, p2, v7, v6, v2}, Lek;->a(Lgb;ILjava/lang/Object;I)V

    goto/16 :goto_582

    .line 1274
    :pswitch_1c2
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1275
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1276
    invoke-direct {p0, v2}, Lek;->a(I)Les;

    move-result-object v8

    .line 1277
    invoke-static {v7, v6, p2, v8}, Leu;->b(ILjava/util/List;Lgb;Les;)V

    goto/16 :goto_582

    .line 1278
    :pswitch_1d9
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1279
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1280
    invoke-static {v7, v6, p2, v9}, Leu;->e(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_582

    .line 1281
    :pswitch_1ec
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1282
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1283
    invoke-static {v7, v6, p2, v9}, Leu;->j(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_582

    .line 1284
    :pswitch_1ff
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1285
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1286
    invoke-static {v7, v6, p2, v9}, Leu;->g(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_582

    .line 1287
    :pswitch_212
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1288
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1289
    invoke-static {v7, v6, p2, v9}, Leu;->l(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_582

    .line 1290
    :pswitch_225
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1291
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1292
    invoke-static {v7, v6, p2, v9}, Leu;->m(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_582

    .line 1293
    :pswitch_238
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1294
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1295
    invoke-static {v7, v6, p2, v9}, Leu;->i(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_582

    .line 1296
    :pswitch_24b
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1297
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1298
    invoke-static {v7, v6, p2, v9}, Leu;->n(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_582

    .line 1299
    :pswitch_25e
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1300
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1301
    invoke-static {v7, v6, p2, v9}, Leu;->k(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_582

    .line 1302
    :pswitch_271
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1303
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1304
    invoke-static {v7, v6, p2, v9}, Leu;->f(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_582

    .line 1305
    :pswitch_284
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1306
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1307
    invoke-static {v7, v6, p2, v9}, Leu;->h(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_582

    .line 1308
    :pswitch_297
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1309
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1310
    invoke-static {v7, v6, p2, v9}, Leu;->d(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_582

    .line 1311
    :pswitch_2aa
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1312
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1313
    invoke-static {v7, v6, p2, v9}, Leu;->c(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_582

    .line 1314
    :pswitch_2bd
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1315
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1316
    invoke-static {v7, v6, p2, v9}, Leu;->b(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_582

    .line 1317
    :pswitch_2d0
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1318
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1319
    invoke-static {v7, v6, p2, v9}, Leu;->a(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_582

    .line 1320
    :pswitch_2e3
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1321
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1322
    invoke-static {v7, v6, p2, v4}, Leu;->e(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_582

    .line 1323
    :pswitch_2f6
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1324
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1325
    invoke-static {v7, v6, p2, v4}, Leu;->j(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_582

    .line 1326
    :pswitch_309
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1327
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1328
    invoke-static {v7, v6, p2, v4}, Leu;->g(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_582

    .line 1329
    :pswitch_31c
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1330
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1331
    invoke-static {v7, v6, p2, v4}, Leu;->l(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_582

    .line 1332
    :pswitch_32f
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1333
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1334
    invoke-static {v7, v6, p2, v4}, Leu;->m(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_582

    .line 1335
    :pswitch_342
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1336
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1337
    invoke-static {v7, v6, p2, v4}, Leu;->i(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_582

    .line 1338
    :pswitch_355
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1339
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1340
    invoke-static {v7, v6, p2}, Leu;->b(ILjava/util/List;Lgb;)V

    goto/16 :goto_582

    .line 1341
    :pswitch_368
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1342
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1343
    invoke-direct {p0, v2}, Lek;->a(I)Les;

    move-result-object v8

    .line 1344
    invoke-static {v7, v6, p2, v8}, Leu;->a(ILjava/util/List;Lgb;Les;)V

    goto/16 :goto_582

    .line 1345
    :pswitch_37f
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1346
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1347
    invoke-static {v7, v6, p2}, Leu;->a(ILjava/util/List;Lgb;)V

    goto/16 :goto_582

    .line 1348
    :pswitch_392
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1349
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1350
    invoke-static {v7, v6, p2, v4}, Leu;->n(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_582

    .line 1351
    :pswitch_3a5
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1352
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1353
    invoke-static {v7, v6, p2, v4}, Leu;->k(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_582

    .line 1354
    :pswitch_3b8
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1355
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1356
    invoke-static {v7, v6, p2, v4}, Leu;->f(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_582

    .line 1357
    :pswitch_3cb
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1358
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1359
    invoke-static {v7, v6, p2, v4}, Leu;->h(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_582

    .line 1360
    :pswitch_3de
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1361
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1362
    invoke-static {v7, v6, p2, v4}, Leu;->d(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_582

    .line 1363
    :pswitch_3f1
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1364
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1365
    invoke-static {v7, v6, p2, v4}, Leu;->c(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_582

    .line 1366
    :pswitch_404
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1367
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1368
    invoke-static {v7, v6, p2, v4}, Leu;->b(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_582

    .line 1369
    :pswitch_417
    invoke-direct {p0, v2}, Lek;->d(I)I

    move-result v7

    .line 1370
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1371
    invoke-static {v7, v6, p2, v4}, Leu;->a(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_582

    .line 1372
    :pswitch_42a
    invoke-direct {p0, p1, v2}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1373
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 1374
    invoke-direct {p0, v2}, Lek;->a(I)Les;

    move-result-object v8

    .line 1375
    invoke-interface {p2, v7, v6, v8}, Lgb;->b(ILjava/lang/Object;Les;)V

    goto/16 :goto_582

    .line 1376
    :pswitch_441
    invoke-direct {p0, p1, v2}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1377
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    .line 1378
    invoke-static {p1, v8, v9}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 1377
    invoke-interface {p2, v7, v8, v9}, Lgb;->e(IJ)V

    goto/16 :goto_582

    .line 1379
    :pswitch_454
    invoke-direct {p0, p1, v2}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1380
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    .line 1381
    invoke-static {p1, v8, v9}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v6

    .line 1380
    invoke-interface {p2, v7, v6}, Lgb;->f(II)V

    goto/16 :goto_582

    .line 1382
    :pswitch_467
    invoke-direct {p0, p1, v2}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1383
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    .line 1384
    invoke-static {p1, v8, v9}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 1383
    invoke-interface {p2, v7, v8, v9}, Lgb;->b(IJ)V

    goto/16 :goto_582

    .line 1385
    :pswitch_47a
    invoke-direct {p0, p1, v2}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1386
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    .line 1387
    invoke-static {p1, v8, v9}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v6

    .line 1386
    invoke-interface {p2, v7, v6}, Lgb;->a(II)V

    goto/16 :goto_582

    .line 1388
    :pswitch_48d
    invoke-direct {p0, p1, v2}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1389
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    .line 1390
    invoke-static {p1, v8, v9}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v6

    .line 1389
    invoke-interface {p2, v7, v6}, Lgb;->b(II)V

    goto/16 :goto_582

    .line 1391
    :pswitch_4a0
    invoke-direct {p0, p1, v2}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1392
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    .line 1393
    invoke-static {p1, v8, v9}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v6

    .line 1392
    invoke-interface {p2, v7, v6}, Lgb;->e(II)V

    goto/16 :goto_582

    .line 1394
    :pswitch_4b3
    invoke-direct {p0, p1, v2}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1395
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lck;

    .line 1396
    invoke-interface {p2, v7, v6}, Lgb;->a(ILck;)V

    goto/16 :goto_582

    .line 1397
    :pswitch_4c8
    invoke-direct {p0, p1, v2}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1398
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 1399
    invoke-direct {p0, v2}, Lek;->a(I)Les;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lgb;->a(ILjava/lang/Object;Les;)V

    goto/16 :goto_582

    .line 1400
    :pswitch_4df
    invoke-direct {p0, p1, v2}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1401
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6, p2}, Lek;->a(ILjava/lang/Object;Lgb;)V

    goto/16 :goto_582

    .line 1402
    :pswitch_4f2
    invoke-direct {p0, p1, v2}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1403
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    .line 1404
    invoke-static {p1, v8, v9}, Lfr;->c(Ljava/lang/Object;J)Z

    move-result v6

    .line 1403
    invoke-interface {p2, v7, v6}, Lgb;->a(IZ)V

    goto/16 :goto_582

    .line 1405
    :pswitch_505
    invoke-direct {p0, p1, v2}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1406
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    .line 1407
    invoke-static {p1, v8, v9}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v6

    .line 1406
    invoke-interface {p2, v7, v6}, Lgb;->d(II)V

    goto :goto_582

    .line 1408
    :pswitch_517
    invoke-direct {p0, p1, v2}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1409
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    .line 1410
    invoke-static {p1, v8, v9}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 1409
    invoke-interface {p2, v7, v8, v9}, Lgb;->d(IJ)V

    goto :goto_582

    .line 1411
    :pswitch_529
    invoke-direct {p0, p1, v2}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1412
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    .line 1413
    invoke-static {p1, v8, v9}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v6

    .line 1412
    invoke-interface {p2, v7, v6}, Lgb;->c(II)V

    goto :goto_582

    .line 1414
    :pswitch_53b
    invoke-direct {p0, p1, v2}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1415
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    .line 1416
    invoke-static {p1, v8, v9}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 1415
    invoke-interface {p2, v7, v8, v9}, Lgb;->c(IJ)V

    goto :goto_582

    .line 1417
    :pswitch_54d
    invoke-direct {p0, p1, v2}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1418
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    .line 1419
    invoke-static {p1, v8, v9}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 1418
    invoke-interface {p2, v7, v8, v9}, Lgb;->a(IJ)V

    goto :goto_582

    .line 1420
    :pswitch_55f
    invoke-direct {p0, p1, v2}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1421
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    .line 1422
    invoke-static {p1, v8, v9}, Lfr;->d(Ljava/lang/Object;J)F

    move-result v6

    .line 1421
    invoke-interface {p2, v7, v6}, Lgb;->a(IF)V

    goto :goto_582

    .line 1423
    :pswitch_571
    invoke-direct {p0, p1, v2}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 1424
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    .line 1425
    invoke-static {p1, v8, v9}, Lfr;->e(Ljava/lang/Object;J)D

    move-result-wide v8

    .line 1424
    invoke-interface {p2, v7, v8, v9}, Lgb;->a(ID)V

    :cond_582
    :goto_582
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_26

    :cond_586
    :goto_586
    if-eqz v5, :cond_59b

    .line 1426
    invoke-static {p2, v5}, Lej;->a(Lgb;Ljava/util/Map$Entry;)V

    .line 1427
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_599

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_586

    :cond_599
    move-object v5, v1

    goto :goto_586

    :cond_59b
    iget-object v0, p0, Lek;->o:Lfh;

    .line 1428
    invoke-static {v0, p1, p2}, Lek;->a(Lfh;Ljava/lang/Object;Lgb;)V

    return-void

    .line 1429
    :cond_5a1
    invoke-direct {p0, p1, p2}, Lek;->b(Ljava/lang/Object;Lgb;)V

    return-void

    nop

    :pswitch_data_5a6
    .packed-switch 0x0
        :pswitch_571
        :pswitch_55f
        :pswitch_54d
        :pswitch_53b
        :pswitch_529
        :pswitch_517
        :pswitch_505
        :pswitch_4f2
        :pswitch_4df
        :pswitch_4c8
        :pswitch_4b3
        :pswitch_4a0
        :pswitch_48d
        :pswitch_47a
        :pswitch_467
        :pswitch_454
        :pswitch_441
        :pswitch_42a
        :pswitch_417
        :pswitch_404
        :pswitch_3f1
        :pswitch_3de
        :pswitch_3cb
        :pswitch_3b8
        :pswitch_3a5
        :pswitch_392
        :pswitch_37f
        :pswitch_368
        :pswitch_355
        :pswitch_342
        :pswitch_32f
        :pswitch_31c
        :pswitch_309
        :pswitch_2f6
        :pswitch_2e3
        :pswitch_2d0
        :pswitch_2bd
        :pswitch_2aa
        :pswitch_297
        :pswitch_284
        :pswitch_271
        :pswitch_25e
        :pswitch_24b
        :pswitch_238
        :pswitch_225
        :pswitch_212
        :pswitch_1ff
        :pswitch_1ec
        :pswitch_1d9
        :pswitch_1c2
        :pswitch_1b5
        :pswitch_1a2
        :pswitch_18f
        :pswitch_17c
        :pswitch_169
        :pswitch_156
        :pswitch_143
        :pswitch_130
        :pswitch_11d
        :pswitch_10a
        :pswitch_f3
        :pswitch_de
        :pswitch_cb
        :pswitch_b8
        :pswitch_a5
        :pswitch_92
        :pswitch_7f
        :pswitch_6c
        :pswitch_55
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;[BIILby;)V
    .registers 14

    iget-boolean v0, p0, Lek;->i:Z

    if-nez v0, :cond_f

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    .line 627
    invoke-virtual/range {v1 .. v7}, Lek;->a(Ljava/lang/Object;[BIIILby;)I

    return-void

    .line 628
    :cond_f
    invoke-direct/range {p0 .. p5}, Lek;->b(Ljava/lang/Object;[BIILby;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 11

    iget-object v0, p0, Lek;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_1c8

    .line 6
    invoke-direct {p0, v2}, Lek;->e(I)I

    move-result v3

    .line 7
    invoke-static {v3}, Lek;->h(I)J

    move-result-wide v4

    .line 8
    invoke-static {v3}, Lek;->g(I)I

    move-result v3

    packed-switch v3, :pswitch_data_1ee

    goto/16 :goto_1c4

    .line 9
    :pswitch_18
    invoke-direct {p0, v2}, Lek;->f(I)I

    move-result v3

    const v6, 0xfffff

    and-int/2addr v3, v6

    int-to-long v6, v3

    .line 10
    invoke-static {p1, v6, v7}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v3

    .line 11
    invoke-static {p2, v6, v7}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_1c3

    .line 12
    invoke-static {p1, v4, v5}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 13
    invoke-static {v3, v4}, Leu;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c4

    goto/16 :goto_1c3

    .line 14
    :pswitch_3b
    invoke-static {p1, v4, v5}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 15
    invoke-static {v3, v4}, Leu;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_54

    .line 16
    :pswitch_48
    invoke-static {p1, v4, v5}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 17
    invoke-static {v3, v4}, Leu;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_54
    if-eqz v3, :cond_1c3

    goto/16 :goto_1c4

    .line 18
    :pswitch_58
    invoke-direct {p0, p1, p2, v2}, Lek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c3

    .line 19
    invoke-static {p1, v4, v5}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 20
    invoke-static {v3, v4}, Leu;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c3

    goto/16 :goto_1c4

    .line 21
    :pswitch_6e
    invoke-direct {p0, p1, p2, v2}, Lek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c3

    .line 22
    invoke-static {p1, v4, v5}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v3, v6, v3

    if-nez v3, :cond_1c3

    goto/16 :goto_1c4

    .line 23
    :pswitch_82
    invoke-direct {p0, p1, p2, v2}, Lek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c3

    .line 24
    invoke-static {p1, v4, v5}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1c3

    goto/16 :goto_1c4

    .line 25
    :pswitch_94
    invoke-direct {p0, p1, p2, v2}, Lek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c3

    .line 26
    invoke-static {p1, v4, v5}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v3, v6, v3

    if-nez v3, :cond_1c3

    goto/16 :goto_1c4

    .line 27
    :pswitch_a8
    invoke-direct {p0, p1, p2, v2}, Lek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c3

    .line 28
    invoke-static {p1, v4, v5}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1c3

    goto/16 :goto_1c4

    .line 29
    :pswitch_ba
    invoke-direct {p0, p1, p2, v2}, Lek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c3

    .line 30
    invoke-static {p1, v4, v5}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1c3

    goto/16 :goto_1c4

    .line 31
    :pswitch_cc
    invoke-direct {p0, p1, p2, v2}, Lek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c3

    .line 32
    invoke-static {p1, v4, v5}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1c3

    goto/16 :goto_1c4

    .line 33
    :pswitch_de
    invoke-direct {p0, p1, p2, v2}, Lek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c3

    .line 34
    invoke-static {p1, v4, v5}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 35
    invoke-static {v3, v4}, Leu;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c3

    goto/16 :goto_1c4

    .line 36
    :pswitch_f4
    invoke-direct {p0, p1, p2, v2}, Lek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c3

    .line 37
    invoke-static {p1, v4, v5}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 38
    invoke-static {v3, v4}, Leu;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c3

    goto/16 :goto_1c4

    .line 39
    :pswitch_10a
    invoke-direct {p0, p1, p2, v2}, Lek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c3

    .line 40
    invoke-static {p1, v4, v5}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 41
    invoke-static {v3, v4}, Leu;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c3

    goto/16 :goto_1c4

    .line 42
    :pswitch_120
    invoke-direct {p0, p1, p2, v2}, Lek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c3

    .line 43
    invoke-static {p1, v4, v5}, Lfr;->c(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {p2, v4, v5}, Lfr;->c(Ljava/lang/Object;J)Z

    move-result v4

    if-ne v3, v4, :cond_1c3

    goto/16 :goto_1c4

    .line 44
    :pswitch_132
    invoke-direct {p0, p1, p2, v2}, Lek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c3

    .line 45
    invoke-static {p1, v4, v5}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1c3

    goto/16 :goto_1c4

    .line 46
    :pswitch_144
    invoke-direct {p0, p1, p2, v2}, Lek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c3

    .line 47
    invoke-static {p1, v4, v5}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v3, v6, v3

    if-nez v3, :cond_1c3

    goto/16 :goto_1c4

    .line 48
    :pswitch_158
    invoke-direct {p0, p1, p2, v2}, Lek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c3

    .line 49
    invoke-static {p1, v4, v5}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1c3

    goto :goto_1c4

    .line 50
    :pswitch_169
    invoke-direct {p0, p1, p2, v2}, Lek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c3

    .line 51
    invoke-static {p1, v4, v5}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v3, v6, v3

    if-nez v3, :cond_1c3

    goto :goto_1c4

    .line 52
    :pswitch_17c
    invoke-direct {p0, p1, p2, v2}, Lek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c3

    .line 53
    invoke-static {p1, v4, v5}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v3, v6, v3

    if-nez v3, :cond_1c3

    goto :goto_1c4

    .line 54
    :pswitch_18f
    invoke-direct {p0, p1, p2, v2}, Lek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c3

    .line 55
    invoke-static {p1, v4, v5}, Lfr;->d(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 56
    invoke-static {p2, v4, v5}, Lfr;->d(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_1c3

    goto :goto_1c4

    .line 57
    :pswitch_1a8
    invoke-direct {p0, p1, p2, v2}, Lek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c3

    .line 58
    invoke-static {p1, v4, v5}, Lfr;->e(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 59
    invoke-static {p2, v4, v5}, Lfr;->e(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v3, v6, v3

    if-nez v3, :cond_1c3

    goto :goto_1c4

    :cond_1c3
    :goto_1c3
    return v1

    :cond_1c4
    :goto_1c4
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_5

    :cond_1c8
    iget-object v0, p0, Lek;->o:Lfh;

    .line 60
    invoke-virtual {v0, p1}, Lfh;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lek;->o:Lfh;

    .line 61
    invoke-virtual {v2, p2}, Lfh;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ed

    iget-boolean v0, p0, Lek;->h:Z

    if-eqz v0, :cond_1eb

    .line 63
    invoke-static {p1}, Lej;->b(Ljava/lang/Object;)Lcu;

    move-result-object p1

    .line 64
    invoke-static {p2}, Lej;->b(Ljava/lang/Object;)Lcu;

    move-result-object p2

    .line 65
    invoke-virtual {p1, p2}, Lcu;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1eb
    const/4 p1, 0x1

    return p1

    :cond_1ed
    return v1

    :pswitch_data_1ee
    .packed-switch 0x0
        :pswitch_1a8
        :pswitch_18f
        :pswitch_17c
        :pswitch_169
        :pswitch_158
        :pswitch_144
        :pswitch_132
        :pswitch_120
        :pswitch_10a
        :pswitch_f4
        :pswitch_de
        :pswitch_cc
        :pswitch_ba
        :pswitch_a8
        :pswitch_94
        :pswitch_82
        :pswitch_6e
        :pswitch_58
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_3b
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)I
    .registers 3

    iget-boolean v0, p0, Lek;->i:Z

    if-nez v0, :cond_9

    .line 74
    invoke-direct {p0, p1}, Lek;->f(Ljava/lang/Object;)I

    move-result p1

    goto :goto_d

    :cond_9
    invoke-direct {p0, p1}, Lek;->g(Ljava/lang/Object;)I

    move-result p1

    :goto_d
    return p1
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    if-eqz p2, :cond_18f

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lek;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_17f

    .line 560
    invoke-direct {p0, v0}, Lek;->e(I)I

    move-result v1

    .line 561
    invoke-static {v1}, Lek;->h(I)J

    move-result-wide v2

    .line 562
    invoke-direct {p0, v0}, Lek;->d(I)I

    move-result v4

    .line 563
    invoke-static {v1}, Lek;->g(I)I

    move-result v1

    packed-switch v1, :pswitch_data_192

    goto/16 :goto_17b

    .line 564
    :pswitch_1d
    invoke-direct {p0, p1, p2, v0}, Lek;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17b

    .line 565
    :pswitch_22
    invoke-direct {p0, p2, v4, v0}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 566
    invoke-static {p2, v2, v3}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 567
    invoke-direct {p0, p1, v4, v0}, Lek;->b(Ljava/lang/Object;II)V

    goto/16 :goto_17b

    .line 568
    :pswitch_34
    invoke-direct {p0, p1, p2, v0}, Lek;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17b

    .line 569
    :pswitch_39
    invoke-direct {p0, p2, v4, v0}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 570
    invoke-static {p2, v2, v3}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 571
    invoke-direct {p0, p1, v4, v0}, Lek;->b(Ljava/lang/Object;II)V

    goto/16 :goto_17b

    :pswitch_4b
    iget-object v1, p0, Lek;->r:Lff;

    .line 572
    invoke-static {v1, p1, p2, v2, v3}, Leu;->a(Lff;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_17b

    :pswitch_52
    iget-object v1, p0, Lek;->n:Ldv;

    .line 573
    invoke-virtual {v1, p1, p2, v2, v3}, Ldv;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_17b

    .line 574
    :pswitch_59
    invoke-direct {p0, p1, p2, v0}, Lek;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17b

    .line 575
    :pswitch_5e
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 576
    invoke-static {p2, v2, v3}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lfr;->a(Ljava/lang/Object;JJ)V

    .line 577
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_17b

    .line 578
    :pswitch_70
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 579
    invoke-static {p2, v2, v3}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->a(Ljava/lang/Object;JI)V

    .line 580
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_17b

    .line 581
    :pswitch_82
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 582
    invoke-static {p2, v2, v3}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lfr;->a(Ljava/lang/Object;JJ)V

    .line 583
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_17b

    .line 584
    :pswitch_94
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 585
    invoke-static {p2, v2, v3}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->a(Ljava/lang/Object;JI)V

    .line 586
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_17b

    .line 587
    :pswitch_a6
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 588
    invoke-static {p2, v2, v3}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->a(Ljava/lang/Object;JI)V

    .line 589
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_17b

    .line 590
    :pswitch_b8
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 591
    invoke-static {p2, v2, v3}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->a(Ljava/lang/Object;JI)V

    .line 592
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_17b

    .line 593
    :pswitch_ca
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 594
    invoke-static {p2, v2, v3}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 595
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_17b

    .line 596
    :pswitch_dc
    invoke-direct {p0, p1, p2, v0}, Lek;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17b

    .line 597
    :pswitch_e1
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 598
    invoke-static {p2, v2, v3}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 599
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_17b

    .line 600
    :pswitch_f3
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 601
    invoke-static {p2, v2, v3}, Lfr;->c(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->a(Ljava/lang/Object;JZ)V

    .line 602
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_17b

    .line 603
    :pswitch_105
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 604
    invoke-static {p2, v2, v3}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->a(Ljava/lang/Object;JI)V

    .line 605
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    goto :goto_17b

    .line 606
    :pswitch_116
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 607
    invoke-static {p2, v2, v3}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lfr;->a(Ljava/lang/Object;JJ)V

    .line 608
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    goto :goto_17b

    .line 609
    :pswitch_127
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 610
    invoke-static {p2, v2, v3}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->a(Ljava/lang/Object;JI)V

    .line 611
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    goto :goto_17b

    .line 612
    :pswitch_138
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 613
    invoke-static {p2, v2, v3}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lfr;->a(Ljava/lang/Object;JJ)V

    .line 614
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    goto :goto_17b

    .line 615
    :pswitch_149
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 616
    invoke-static {p2, v2, v3}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lfr;->a(Ljava/lang/Object;JJ)V

    .line 617
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    goto :goto_17b

    .line 618
    :pswitch_15a
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 619
    invoke-static {p2, v2, v3}, Lfr;->d(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->a(Ljava/lang/Object;JF)V

    .line 620
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    goto :goto_17b

    .line 621
    :pswitch_16b
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 622
    invoke-static {p2, v2, v3}, Lfr;->e(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lfr;->a(Ljava/lang/Object;JD)V

    .line 623
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    :cond_17b
    :goto_17b
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_3

    :cond_17f
    iget-object v0, p0, Lek;->o:Lfh;

    .line 624
    invoke-static {v0, p1, p2}, Leu;->a(Lfh;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lek;->h:Z

    if-eqz v0, :cond_18e

    iget-object v0, p0, Lek;->p:Lej;

    .line 625
    invoke-static {v0, p1, p2}, Leu;->a(Lej;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_18e
    return-void

    :cond_18f
    const/4 p1, 0x0

    .line 626
    throw p1

    nop

    :pswitch_data_192
    .packed-switch 0x0
        :pswitch_16b
        :pswitch_15a
        :pswitch_149
        :pswitch_138
        :pswitch_127
        :pswitch_116
        :pswitch_105
        :pswitch_f3
        :pswitch_e1
        :pswitch_dc
        :pswitch_ca
        :pswitch_b8
        :pswitch_a6
        :pswitch_94
        :pswitch_82
        :pswitch_70
        :pswitch_5e
        :pswitch_59
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_4b
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_34
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_1d
    .end packed-switch
.end method

.method public final d(Ljava/lang/Object;)V
    .registers 7

    iget v0, p0, Lek;->l:I

    :goto_2
    iget v1, p0, Lek;->m:I

    if-ge v0, v1, :cond_22

    iget-object v1, p0, Lek;->k:[I

    .line 553
    aget v1, v1, v0

    invoke-direct {p0, v1}, Lek;->e(I)I

    move-result v1

    invoke-static {v1}, Lek;->h(I)J

    move-result-wide v1

    .line 554
    invoke-static {p1, v1, v2}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_19

    goto :goto_1f

    .line 555
    :cond_19
    invoke-static {v3}, Lff;->e(Ljava/lang/Object;)V

    invoke-static {p1, v1, v2, v3}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_22
    iget-object v0, p0, Lek;->k:[I

    .line 556
    array-length v0, v0

    :goto_25
    if-ge v1, v0, :cond_34

    iget-object v2, p0, Lek;->n:Ldv;

    iget-object v3, p0, Lek;->k:[I

    .line 557
    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Ldv;->a(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_34
    iget-object v0, p0, Lek;->o:Lfh;

    .line 558
    invoke-virtual {v0, p1}, Lfh;->a(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lek;->h:Z

    if-eqz v0, :cond_42

    iget-object v0, p0, Lek;->p:Lej;

    .line 559
    invoke-virtual {v0, p1}, Lej;->a(Ljava/lang/Object;)V

    :cond_42
    return-void
.end method

.method public final e(Ljava/lang/Object;)Z
    .registers 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const v8, 0xfffff

    const/4 v9, 0x0

    move v0, v8

    move v1, v9

    move v10, v1

    :goto_b
    iget v2, v6, Lek;->l:I

    const/4 v3, 0x1

    if-ge v10, v2, :cond_ea

    iget-object v2, v6, Lek;->k:[I

    .line 525
    aget v11, v2, v10

    .line 526
    invoke-direct {v6, v11}, Lek;->d(I)I

    move-result v12

    .line 527
    invoke-direct {v6, v11}, Lek;->e(I)I

    move-result v13

    iget-object v2, v6, Lek;->c:[I

    add-int/lit8 v4, v11, 0x2

    .line 528
    aget v2, v2, v4

    and-int v4, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v14, v3, v2

    if-ne v4, v0, :cond_2e

    move v15, v0

    move/from16 v16, v1

    goto :goto_3d

    :cond_2e
    if-eq v4, v8, :cond_3a

    .line 530
    sget-object v0, Lek;->b:Lsun/misc/Unsafe;

    int-to-long v1, v4

    .line 529
    invoke-virtual {v0, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move/from16 v16, v0

    goto :goto_3c

    :cond_3a
    move/from16 v16, v1

    :goto_3c
    move v15, v4

    :goto_3d
    const/high16 v0, 0x10000000

    and-int/2addr v0, v13

    if-nez v0, :cond_43

    goto :goto_53

    :cond_43
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    .line 530
    invoke-direct/range {v0 .. v5}, Lek;->a(Ljava/lang/Object;IIII)Z

    move-result v0

    if-nez v0, :cond_53

    return v9

    .line 531
    :cond_53
    :goto_53
    invoke-static {v13}, Lek;->g(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_c9

    const/16 v1, 0x11

    if-eq v0, v1, :cond_c9

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_a0

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_8f

    const/16 v1, 0x44

    if-eq v0, v1, :cond_8f

    packed-switch v0, :pswitch_data_fa

    goto/16 :goto_e3

    .line 534
    :pswitch_70
    invoke-static {v13}, Lek;->h(I)J

    move-result-wide v0

    invoke-static {v7, v0, v1}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lff;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 535
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_83

    goto :goto_e3

    .line 544
    :cond_83
    invoke-direct {v6, v11}, Lek;->b(I)Ljava/lang/Object;

    move-result-object v0

    .line 545
    invoke-static {v0}, Lff;->b(Ljava/lang/Object;)Lea;

    move-result-object v0

    .line 546
    iget-object v0, v0, Lea;->c:Lfy;

    const/4 v0, 0x0

    throw v0

    .line 532
    :cond_8f
    invoke-direct {v6, v7, v12, v11}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 533
    invoke-direct {v6, v11}, Lek;->a(I)Les;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lek;->a(Ljava/lang/Object;ILes;)Z

    move-result v0

    if-nez v0, :cond_e3

    return v9

    .line 536
    :cond_a0
    :pswitch_a0
    invoke-static {v13}, Lek;->h(I)J

    move-result-wide v0

    invoke-static {v7, v0, v1}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 537
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e3

    .line 538
    invoke-direct {v6, v11}, Lek;->a(I)Les;

    move-result-object v1

    move v2, v9

    .line 539
    :goto_b5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_e3

    .line 540
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 541
    invoke-interface {v1, v3}, Les;->e(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c8

    add-int/lit8 v2, v2, 0x1

    goto :goto_b5

    :cond_c8
    return v9

    :cond_c9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    .line 542
    invoke-direct/range {v0 .. v5}, Lek;->a(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 543
    invoke-direct {v6, v11}, Lek;->a(I)Les;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lek;->a(Ljava/lang/Object;ILes;)Z

    move-result v0

    if-nez v0, :cond_e3

    return v9

    :cond_e3
    :goto_e3
    add-int/lit8 v10, v10, 0x1

    move v0, v15

    move/from16 v1, v16

    goto/16 :goto_b

    .line 529
    :cond_ea
    iget-boolean v0, v6, Lek;->h:Z

    if-eqz v0, :cond_f9

    .line 547
    invoke-static/range {p1 .. p1}, Lej;->b(Ljava/lang/Object;)Lcu;

    move-result-object v0

    invoke-virtual {v0}, Lcu;->e()Z

    move-result v0

    if-nez v0, :cond_f9

    return v9

    :cond_f9
    return v3

    :pswitch_data_fa
    .packed-switch 0x31
        :pswitch_a0
        :pswitch_70
    .end packed-switch
.end method
