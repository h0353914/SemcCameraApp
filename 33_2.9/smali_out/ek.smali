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

    new-array v0, v0, [I

    .line 1
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

    move-result p0

    return p0

    :cond_d
    const/4 p0, -0x1

    return p0
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

    move-result-object v0

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v6, v2, 0x4

    move-object v2, v0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p13

    .line 749
    invoke-static/range {v2 .. v7}, Leb;->a(Les;[BIIILby;)I

    move-result v0

    .line 750
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, v8, :cond_4b

    .line 751
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_4c

    :cond_4b
    const/4 v15, 0x0

    :goto_4c
    if-eqz v15, :cond_58

    iget-object v2, v11, Lby;->c:Ljava/lang/Object;

    .line 752
    invoke-static {v15, v2}, Ldj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 753
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5d

    .line 755
    :cond_58
    iget-object v2, v11, Lby;->c:Ljava/lang/Object;

    .line 754
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

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

    move-result v0

    iget-wide v2, v11, Lby;->b:J

    .line 757
    invoke-static {v2, v3}, Lcl;->a(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 758
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_7b
    if-eqz v5, :cond_7f

    goto/16 :goto_1cd

    .line 759
    :cond_7f
    invoke-static {v3, v4, v11}, Leb;->a([BILby;)I

    move-result v0

    iget v2, v11, Lby;->a:I

    .line 760
    invoke-static {v2}, Lcl;->a(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 761
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_94
    if-nez v5, :cond_1cd

    .line 762
    invoke-static {v3, v4, v11}, Leb;->a([BILby;)I

    move-result v3

    iget v4, v11, Lby;->a:I

    .line 763
    invoke-direct {v0, v6}, Lek;->c(I)Ldh;

    move-result-object v0

    if-eqz v0, :cond_b6

    .line 764
    invoke-interface {v0, v4}, Ldh;->a(I)Z

    move-result v0

    if-eqz v0, :cond_a9

    goto :goto_b6

    .line 767
    :cond_a9
    invoke-static/range {p1 .. p1}, Lek;->c(Ljava/lang/Object;)Lfi;

    move-result-object v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lfi;->a(ILjava/lang/Object;)V

    goto :goto_c0

    .line 765
    :cond_b6
    :goto_b6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 766
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_c0
    move v0, v3

    goto/16 :goto_1ce

    :pswitch_c3
    if-eq v5, v15, :cond_c7

    goto/16 :goto_1cd

    .line 768
    :cond_c7
    invoke-static {v3, v4, v11}, Leb;->e([BILby;)I

    move-result v0

    iget-object v2, v11, Lby;->c:Ljava/lang/Object;

    .line 769
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 770
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_d4
    if-ne v5, v15, :cond_1cd

    .line 771
    invoke-direct {v0, v6}, Lek;->a(I)Les;

    move-result-object v0

    move/from16 v2, p4

    .line 772
    invoke-static {v0, v3, v4, v2, v11}, Leb;->a(Les;[BIILby;)I

    move-result v0

    .line 773
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, v8, :cond_eb

    .line 774
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_ec

    :cond_eb
    const/4 v15, 0x0

    :goto_ec
    if-eqz v15, :cond_f8

    iget-object v2, v11, Lby;->c:Ljava/lang/Object;

    .line 775
    invoke-static {v15, v2}, Ldj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 776
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_fd

    .line 778
    :cond_f8
    iget-object v2, v11, Lby;->c:Ljava/lang/Object;

    .line 777
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 778
    :goto_fd
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1ce

    :pswitch_102
    if-ne v5, v15, :cond_1cd

    .line 779
    invoke-static {v3, v4, v11}, Leb;->a([BILby;)I

    move-result v0

    iget v2, v11, Lby;->a:I

    if-nez v2, :cond_112

    const-string v2, ""

    .line 780
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_12c

    :cond_112
    const/high16 v4, 0x20000000

    and-int v4, p8, v4

    if-nez v4, :cond_119

    goto :goto_121

    :cond_119
    add-int v4, v0, v2

    .line 781
    invoke-static {v3, v0, v4}, Lfx;->a([BII)Z

    move-result v4

    if-eqz v4, :cond_131

    .line 784
    :goto_121
    new-instance v4, Ljava/lang/String;

    .line 782
    sget-object v5, Ldj;->a:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v0, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 783
    invoke-virtual {v12, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v0, v2

    .line 784
    :goto_12c
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1ce

    .line 785
    :cond_131
    invoke-static {}, Ldl;->f()Ldl;

    move-result-object v0

    throw v0

    :pswitch_136
    if-nez v5, :cond_1cd

    .line 786
    invoke-static {v3, v4, v11}, Leb;->b([BILby;)I

    move-result v0

    iget-wide v2, v11, Lby;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_146

    const/4 v15, 0x1

    goto :goto_147

    :cond_146
    const/4 v15, 0x0

    .line 787
    :goto_147
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 788
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_152
    if-eq v5, v7, :cond_156

    goto/16 :goto_1cd

    .line 789
    :cond_156
    invoke-static/range {p2 .. p3}, Leb;->a([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 790
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    return v0

    :pswitch_167
    const/4 v0, 0x1

    if-eq v5, v0, :cond_16b

    goto :goto_1cd

    .line 791
    :cond_16b
    invoke-static/range {p2 .. p3}, Leb;->b([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 792
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x8

    return v0

    :pswitch_17c
    if-eqz v5, :cond_17f

    goto :goto_1cd

    .line 793
    :cond_17f
    invoke-static {v3, v4, v11}, Leb;->a([BILby;)I

    move-result v0

    iget v2, v11, Lby;->a:I

    .line 794
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 795
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_190
    if-eqz v5, :cond_193

    goto :goto_1cd

    .line 796
    :cond_193
    invoke-static {v3, v4, v11}, Leb;->b([BILby;)I

    move-result v0

    iget-wide v2, v11, Lby;->b:J

    .line 797
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 798
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_1a4
    if-eq v5, v7, :cond_1a7

    goto :goto_1cd

    .line 799
    :cond_1a7
    invoke-static/range {p2 .. p3}, Leb;->d([BI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 800
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    return v0

    :pswitch_1b8
    const/4 v0, 0x1

    if-eq v5, v0, :cond_1bc

    goto :goto_1cd

    .line 801
    :cond_1bc
    invoke-static/range {p2 .. p3}, Leb;->c([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 802
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x8

    return v0

    :cond_1cd
    :goto_1cd
    move v0, v4

    :goto_1ce
    return v0

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

    move-result-object v12

    .line 944
    check-cast v12, Ldi;

    .line 945
    invoke-interface {v12}, Ldi;->a()Z

    move-result v13

    if-nez v13, :cond_32

    .line 946
    invoke-interface {v12}, Ldi;->size()I

    move-result v13

    if-eqz v13, :cond_29

    add-int/2addr v13, v13

    goto :goto_2b

    :cond_29
    const/16 v13, 0xa

    .line 947
    :goto_2b
    invoke-interface {v12, v13}, Ldi;->a(I)Ldi;

    move-result-object v12

    .line 948
    invoke-virtual {v11, v1, v9, v10, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_32
    const/4 v9, 0x5

    const-wide/16 v10, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x2

    packed-switch p11, :pswitch_data_36c

    const/4 v1, 0x3

    if-ne v6, v1, :cond_369

    .line 1045
    invoke-direct {p0, v8}, Lek;->a(I)Les;

    move-result-object v0

    and-int/lit8 v1, v2, -0x8

    or-int/lit8 v1, v1, 0x4

    move-object/from16 p6, v0

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v1

    move-object/from16 p11, p14

    .line 1046
    invoke-static/range {p6 .. p11}, Leb;->a(Les;[BIIILby;)I

    move-result v4

    iget-object v6, v7, Lby;->c:Ljava/lang/Object;

    .line 1047
    invoke-interface {v12, v6}, Ldi;->add(Ljava/lang/Object;)Z

    goto/16 :goto_348

    :pswitch_5c
    if-ne v6, v14, :cond_64

    .line 949
    invoke-static {v3, v4, v12, v7}, Leb;->i([BILdi;Lby;)I

    move-result v0

    goto/16 :goto_36a

    :cond_64
    if-nez v6, :cond_369

    .line 950
    check-cast v12, Ldw;

    .line 951
    invoke-static {v3, v4, v7}, Leb;->b([BILby;)I

    move-result v0

    iget-wide v8, v7, Lby;->b:J

    .line 952
    invoke-static {v8, v9}, Lcl;->a(J)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Ldw;->a(J)V

    :goto_75
    if-ge v0, v5, :cond_8d

    .line 953
    invoke-static {v3, v0, v7}, Leb;->a([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    if-ne v2, v4, :cond_8d

    .line 954
    invoke-static {v3, v1, v7}, Leb;->b([BILby;)I

    move-result v0

    iget-wide v8, v7, Lby;->b:J

    .line 955
    invoke-static {v8, v9}, Lcl;->a(J)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Ldw;->a(J)V

    goto :goto_75

    :cond_8d
    return v0

    :pswitch_8e
    if-ne v6, v14, :cond_96

    .line 956
    invoke-static {v3, v4, v12, v7}, Leb;->h([BILdi;Lby;)I

    move-result v0

    goto/16 :goto_36a

    :cond_96
    if-nez v6, :cond_369

    .line 957
    check-cast v12, Ldf;

    .line 958
    invoke-static {v3, v4, v7}, Leb;->a([BILby;)I

    move-result v0

    iget v1, v7, Lby;->a:I

    .line 959
    invoke-static {v1}, Lcl;->a(I)I

    move-result v1

    invoke-virtual {v12, v1}, Ldf;->c(I)V

    :goto_a7
    if-ge v0, v5, :cond_bf

    .line 960
    invoke-static {v3, v0, v7}, Leb;->a([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    if-ne v2, v4, :cond_bf

    .line 961
    invoke-static {v3, v1, v7}, Leb;->a([BILby;)I

    move-result v0

    iget v1, v7, Lby;->a:I

    .line 962
    invoke-static {v1}, Lcl;->a(I)I

    move-result v1

    invoke-virtual {v12, v1}, Ldf;->c(I)V

    goto :goto_a7

    :cond_bf
    return v0

    :pswitch_c0
    if-ne v6, v14, :cond_c7

    .line 963
    invoke-static {v3, v4, v12, v7}, Leb;->a([BILdi;Lby;)I

    move-result v2

    goto :goto_d8

    :cond_c7
    if-nez v6, :cond_369

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v12

    move-object/from16 v7, p14

    .line 964
    invoke-static/range {v2 .. v7}, Leb;->a(I[BIILdi;Lby;)I

    move-result v2

    .line 965
    :goto_d8
    check-cast v1, Lde;

    iget-object v3, v1, Lde;->h:Lfi;

    .line 966
    sget-object v4, Lfi;->a:Lfi;

    if-eq v3, v4, :cond_e1

    goto :goto_e2

    :cond_e1
    const/4 v3, 0x0

    .line 967
    :goto_e2
    invoke-direct {p0, v8}, Lek;->c(I)Ldh;

    move-result-object v4

    iget-object v0, v0, Lek;->o:Lfh;

    move/from16 v5, p6

    .line 968
    invoke-static {v5, v12, v4, v3, v0}, Leu;->a(ILjava/util/List;Ldh;Ljava/lang/Object;Lfh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfi;

    if-nez v0, :cond_f5

    move v0, v2

    goto/16 :goto_36a

    :cond_f5
    iput-object v0, v1, Lde;->h:Lfi;

    return v2

    :pswitch_f8
    if-ne v6, v14, :cond_369

    .line 969
    invoke-static {v3, v4, v7}, Leb;->a([BILby;)I

    move-result v0

    iget v1, v7, Lby;->a:I

    if-ltz v1, :cond_14c

    .line 971
    array-length v4, v3

    sub-int/2addr v4, v0

    if-gt v1, v4, :cond_147

    if-eqz v1, :cond_111

    .line 973
    invoke-static {v3, v0, v1}, Lck;->a([BII)Lck;

    move-result-object v4

    invoke-interface {v12, v4}, Ldi;->add(Ljava/lang/Object;)Z

    :goto_10f
    add-int/2addr v0, v1

    goto :goto_116

    .line 974
    :cond_111
    sget-object v1, Lck;->b:Lck;

    invoke-interface {v12, v1}, Ldi;->add(Ljava/lang/Object;)Z

    :goto_116
    if-ge v0, v5, :cond_146

    .line 975
    invoke-static {v3, v0, v7}, Leb;->a([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    if-ne v2, v4, :cond_146

    .line 976
    invoke-static {v3, v1, v7}, Leb;->a([BILby;)I

    move-result v0

    iget v1, v7, Lby;->a:I

    if-ltz v1, :cond_141

    .line 977
    array-length v4, v3

    sub-int/2addr v4, v0

    if-gt v1, v4, :cond_13c

    if-eqz v1, :cond_136

    .line 978
    invoke-static {v3, v0, v1}, Lck;->a([BII)Lck;

    move-result-object v4

    invoke-interface {v12, v4}, Ldi;->add(Ljava/lang/Object;)Z

    goto :goto_10f

    :cond_136
    sget-object v1, Lck;->b:Lck;

    .line 979
    invoke-interface {v12, v1}, Ldi;->add(Ljava/lang/Object;)Z

    goto :goto_116

    .line 981
    :cond_13c
    invoke-static {}, Ldl;->a()Ldl;

    move-result-object v0

    throw v0

    .line 980
    :cond_141
    invoke-static {}, Ldl;->b()Ldl;

    move-result-object v0

    throw v0

    :cond_146
    return v0

    .line 972
    :cond_147
    invoke-static {}, Ldl;->a()Ldl;

    move-result-object v0

    throw v0

    .line 970
    :cond_14c
    invoke-static {}, Ldl;->b()Ldl;

    move-result-object v0

    throw v0

    :pswitch_151
    if-eq v6, v14, :cond_155

    goto/16 :goto_369

    .line 982
    :cond_155
    invoke-direct {p0, v8}, Lek;->a(I)Les;

    move-result-object v0

    move-object/from16 p6, v0

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v12

    move-object/from16 p12, p14

    .line 983
    invoke-static/range {p6 .. p12}, Leb;->a(Les;I[BIILdi;Lby;)I

    move-result v0

    return v0

    :pswitch_16c
    if-ne v6, v14, :cond_369

    const-wide/32 v0, 0x20000000

    and-long v0, p9, v0

    cmp-long v0, v0, v10

    const-string v1, ""

    if-eqz v0, :cond_1dd

    .line 995
    invoke-static {v3, v4, v7}, Leb;->a([BILby;)I

    move-result v0

    iget v4, v7, Lby;->a:I

    if-ltz v4, :cond_1d8

    if-nez v4, :cond_188

    .line 997
    invoke-interface {v12, v1}, Ldi;->add(Ljava/lang/Object;)Z

    move v6, v0

    goto :goto_19a

    :cond_188
    add-int v6, v0, v4

    .line 998
    invoke-static {v3, v0, v6}, Lfx;->a([BII)Z

    move-result v8

    if-eqz v8, :cond_1d3

    .line 999
    new-instance v8, Ljava/lang/String;

    .line 1000
    sget-object v9, Ldj;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v0, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1001
    invoke-interface {v12, v8}, Ldi;->add(Ljava/lang/Object;)Z

    :goto_19a
    if-ge v6, v5, :cond_1d0

    .line 1002
    invoke-static {v3, v6, v7}, Leb;->a([BILby;)I

    move-result v0

    iget v4, v7, Lby;->a:I

    if-ne v2, v4, :cond_1d0

    .line 1003
    invoke-static {v3, v0, v7}, Leb;->a([BILby;)I

    move-result v6

    iget v0, v7, Lby;->a:I

    if-ltz v0, :cond_1cb

    if-nez v0, :cond_1b2

    .line 1004
    invoke-interface {v12, v1}, Ldi;->add(Ljava/lang/Object;)Z

    goto :goto_19a

    :cond_1b2
    add-int v4, v6, v0

    .line 1005
    invoke-static {v3, v6, v4}, Lfx;->a([BII)Z

    move-result v8

    if-eqz v8, :cond_1c6

    new-instance v8, Ljava/lang/String;

    .line 1006
    sget-object v9, Ldj;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v6, v0, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1007
    invoke-interface {v12, v8}, Ldi;->add(Ljava/lang/Object;)Z

    move v6, v4

    goto :goto_19a

    .line 1009
    :cond_1c6
    invoke-static {}, Ldl;->f()Ldl;

    move-result-object v0

    throw v0

    .line 1008
    :cond_1cb
    invoke-static {}, Ldl;->b()Ldl;

    move-result-object v0

    throw v0

    :cond_1d0
    move v0, v6

    goto/16 :goto_36a

    .line 999
    :cond_1d3
    invoke-static {}, Ldl;->f()Ldl;

    move-result-object v0

    throw v0

    .line 996
    :cond_1d8
    invoke-static {}, Ldl;->b()Ldl;

    move-result-object v0

    throw v0

    .line 984
    :cond_1dd
    invoke-static {v3, v4, v7}, Leb;->a([BILby;)I

    move-result v0

    iget v4, v7, Lby;->a:I

    if-ltz v4, :cond_21e

    if-eqz v4, :cond_1f3

    .line 985
    new-instance v6, Ljava/lang/String;

    .line 986
    sget-object v8, Ldj;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v0, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 987
    invoke-interface {v12, v6}, Ldi;->add(Ljava/lang/Object;)Z

    :goto_1f1
    add-int/2addr v0, v4

    goto :goto_1f6

    .line 988
    :cond_1f3
    invoke-interface {v12, v1}, Ldi;->add(Ljava/lang/Object;)Z

    :goto_1f6
    if-ge v0, v5, :cond_36a

    .line 989
    invoke-static {v3, v0, v7}, Leb;->a([BILby;)I

    move-result v4

    iget v6, v7, Lby;->a:I

    if-ne v2, v6, :cond_36a

    .line 990
    invoke-static {v3, v4, v7}, Leb;->a([BILby;)I

    move-result v0

    iget v4, v7, Lby;->a:I

    if-ltz v4, :cond_219

    if-eqz v4, :cond_215

    .line 994
    new-instance v6, Ljava/lang/String;

    .line 991
    sget-object v8, Ldj;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v0, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 992
    invoke-interface {v12, v6}, Ldi;->add(Ljava/lang/Object;)Z

    goto :goto_1f1

    .line 993
    :cond_215
    invoke-interface {v12, v1}, Ldi;->add(Ljava/lang/Object;)Z

    goto :goto_1f6

    .line 994
    :cond_219
    invoke-static {}, Ldl;->b()Ldl;

    move-result-object v0

    throw v0

    .line 985
    :cond_21e
    invoke-static {}, Ldl;->b()Ldl;

    move-result-object v0

    throw v0

    :pswitch_223
    if-ne v6, v14, :cond_22b

    .line 1010
    invoke-static {v3, v4, v12, v7}, Leb;->g([BILdi;Lby;)I

    move-result v0

    goto/16 :goto_36a

    :cond_22b
    if-nez v6, :cond_369

    .line 1011
    check-cast v12, Lca;

    .line 1012
    invoke-static {v3, v4, v7}, Leb;->b([BILby;)I

    move-result v0

    iget-wide v8, v7, Lby;->b:J

    cmp-long v1, v8, v10

    const/4 v4, 0x0

    if-eqz v1, :cond_23c

    move v1, v13

    goto :goto_23d

    :cond_23c
    move v1, v4

    .line 1013
    :goto_23d
    invoke-virtual {v12, v1}, Lca;->a(Z)V

    :goto_240
    if-ge v0, v5, :cond_25b

    .line 1014
    invoke-static {v3, v0, v7}, Leb;->a([BILby;)I

    move-result v1

    iget v6, v7, Lby;->a:I

    if-ne v2, v6, :cond_25b

    .line 1015
    invoke-static {v3, v1, v7}, Leb;->b([BILby;)I

    move-result v0

    iget-wide v8, v7, Lby;->b:J

    cmp-long v1, v8, v10

    if-eqz v1, :cond_256

    move v1, v13

    goto :goto_257

    :cond_256
    move v1, v4

    .line 1016
    :goto_257
    invoke-virtual {v12, v1}, Lca;->a(Z)V

    goto :goto_240

    :cond_25b
    return v0

    :pswitch_25c
    if-ne v6, v14, :cond_264

    .line 1017
    invoke-static {v3, v4, v12, v7}, Leb;->c([BILdi;Lby;)I

    move-result v0

    goto/16 :goto_36a

    :cond_264
    if-ne v6, v9, :cond_369

    .line 1018
    check-cast v12, Ldf;

    .line 1019
    invoke-static/range {p2 .. p3}, Leb;->a([BI)I

    move-result v0

    invoke-virtual {v12, v0}, Ldf;->c(I)V

    add-int/lit8 v0, v4, 0x4

    :goto_271
    if-ge v0, v5, :cond_285

    .line 1020
    invoke-static {v3, v0, v7}, Leb;->a([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    if-ne v2, v4, :cond_285

    .line 1021
    invoke-static {v3, v1}, Leb;->a([BI)I

    move-result v0

    invoke-virtual {v12, v0}, Ldf;->c(I)V

    add-int/lit8 v0, v1, 0x4

    goto :goto_271

    :cond_285
    return v0

    :pswitch_286
    if-ne v6, v14, :cond_28e

    .line 1022
    invoke-static {v3, v4, v12, v7}, Leb;->d([BILdi;Lby;)I

    move-result v0

    goto/16 :goto_36a

    :cond_28e
    if-ne v6, v13, :cond_369

    .line 1023
    check-cast v12, Ldw;

    .line 1024
    invoke-static/range {p2 .. p3}, Leb;->b([BI)J

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Ldw;->a(J)V

    add-int/lit8 v0, v4, 0x8

    :goto_29b
    if-ge v0, v5, :cond_2af

    .line 1025
    invoke-static {v3, v0, v7}, Leb;->a([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    if-ne v2, v4, :cond_2af

    .line 1026
    invoke-static {v3, v1}, Leb;->b([BI)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Ldw;->a(J)V

    add-int/lit8 v0, v1, 0x8

    goto :goto_29b

    :cond_2af
    return v0

    :pswitch_2b0
    if-ne v6, v14, :cond_2b8

    .line 1027
    invoke-static {v3, v4, v12, v7}, Leb;->a([BILdi;Lby;)I

    move-result v0

    goto/16 :goto_36a

    :cond_2b8
    if-eqz v6, :cond_2bc

    goto/16 :goto_369

    :cond_2bc
    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v12

    move-object/from16 p10, p14

    .line 1028
    invoke-static/range {p5 .. p10}, Leb;->a(I[BIILdi;Lby;)I

    move-result v0

    return v0

    :pswitch_2cb
    if-ne v6, v14, :cond_2d3

    .line 1029
    invoke-static {v3, v4, v12, v7}, Leb;->b([BILdi;Lby;)I

    move-result v0

    goto/16 :goto_36a

    :cond_2d3
    if-nez v6, :cond_369

    .line 1030
    check-cast v12, Ldw;

    .line 1031
    invoke-static {v3, v4, v7}, Leb;->b([BILby;)I

    move-result v0

    iget-wide v8, v7, Lby;->b:J

    .line 1032
    invoke-virtual {v12, v8, v9}, Ldw;->a(J)V

    :goto_2e0
    if-ge v0, v5, :cond_2f4

    .line 1033
    invoke-static {v3, v0, v7}, Leb;->a([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    if-ne v2, v4, :cond_2f4

    .line 1034
    invoke-static {v3, v1, v7}, Leb;->b([BILby;)I

    move-result v0

    iget-wide v8, v7, Lby;->b:J

    .line 1035
    invoke-virtual {v12, v8, v9}, Ldw;->a(J)V

    goto :goto_2e0

    :cond_2f4
    return v0

    :pswitch_2f5
    if-ne v6, v14, :cond_2fd

    .line 1036
    invoke-static {v3, v4, v12, v7}, Leb;->e([BILdi;Lby;)I

    move-result v0

    goto/16 :goto_36a

    :cond_2fd
    if-ne v6, v9, :cond_369

    .line 1037
    check-cast v12, Lcx;

    .line 1038
    invoke-static/range {p2 .. p3}, Leb;->d([BI)F

    move-result v0

    invoke-virtual {v12, v0}, Lcx;->a(F)V

    add-int/lit8 v0, v4, 0x4

    :goto_30a
    if-ge v0, v5, :cond_31e

    .line 1039
    invoke-static {v3, v0, v7}, Leb;->a([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    if-ne v2, v4, :cond_31e

    .line 944
    invoke-static {v3, v1}, Leb;->d([BI)F

    move-result v0

    invoke-virtual {v12, v0}, Lcx;->a(F)V

    add-int/lit8 v0, v1, 0x4

    goto :goto_30a

    :cond_31e
    return v0

    :pswitch_31f
    if-ne v6, v14, :cond_326

    .line 1040
    invoke-static {v3, v4, v12, v7}, Leb;->f([BILdi;Lby;)I

    move-result v0

    goto :goto_36a

    :cond_326
    if-ne v6, v13, :cond_369

    .line 1041
    check-cast v12, Lcp;

    .line 1042
    invoke-static/range {p2 .. p3}, Leb;->c([BI)D

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Lcp;->a(D)V

    add-int/lit8 v0, v4, 0x8

    :goto_333
    if-ge v0, v5, :cond_347

    .line 1043
    invoke-static {v3, v0, v7}, Leb;->a([BILby;)I

    move-result v1

    iget v4, v7, Lby;->a:I

    if-ne v2, v4, :cond_347

    .line 1044
    invoke-static {v3, v1}, Leb;->c([BI)D

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcp;->a(D)V

    add-int/lit8 v0, v1, 0x8

    goto :goto_333

    :cond_347
    return v0

    :goto_348
    if-ge v4, v5, :cond_368

    .line 1048
    invoke-static {v3, v4, v7}, Leb;->a([BILby;)I

    move-result v6

    iget v8, v7, Lby;->a:I

    if-ne v2, v8, :cond_368

    move-object/from16 p6, v0

    move-object/from16 p7, p2

    move/from16 p8, v6

    move/from16 p9, p4

    move/from16 p10, v1

    move-object/from16 p11, p14

    .line 1049
    invoke-static/range {p6 .. p11}, Leb;->a(Les;[BIIILby;)I

    move-result v4

    iget-object v6, v7, Lby;->c:Ljava/lang/Object;

    .line 1050
    invoke-interface {v12, v6}, Ldi;->add(Ljava/lang/Object;)Z

    goto :goto_348

    :cond_368
    return v4

    :cond_369
    :goto_369
    move v0, v4

    :cond_36a
    :goto_36a
    return v0

    nop

    :pswitch_data_36c
    .packed-switch 0x12
        :pswitch_31f
        :pswitch_2f5
        :pswitch_2cb
        :pswitch_2cb
        :pswitch_2b0
        :pswitch_286
        :pswitch_25c
        :pswitch_223
        :pswitch_16c
        :pswitch_151
        :pswitch_f8
        :pswitch_2b0
        :pswitch_c0
        :pswitch_25c
        :pswitch_286
        :pswitch_8e
        :pswitch_5c
        :pswitch_31f
        :pswitch_2f5
        :pswitch_2cb
        :pswitch_2cb
        :pswitch_2b0
        :pswitch_286
        :pswitch_25c
        :pswitch_223
        :pswitch_2b0
        :pswitch_c0
        :pswitch_25c
        :pswitch_286
        :pswitch_8e
        :pswitch_5c
    .end packed-switch
.end method

.method private final a(Ljava/lang/Object;[BIIIJLby;)I
    .registers 11

    sget-object v0, Lek;->b:Lsun/misc/Unsafe;

    .line 728
    invoke-direct {p0, p5}, Lek;->b(I)Ljava/lang/Object;

    move-result-object p0

    .line 729
    invoke-virtual {v0, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p5

    .line 730
    invoke-static {p5}, Lff;->d(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 731
    invoke-static {}, Lff;->a()Ljava/lang/Object;

    move-result-object v1

    .line 732
    invoke-static {v1, p5}, Lff;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    invoke-virtual {v0, p1, p6, p7, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p5, v1

    .line 734
    :cond_1b
    invoke-static {p0}, Lff;->b(Ljava/lang/Object;)Lea;

    move-result-object p0

    .line 735
    invoke-static {p5}, Lff;->c(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 736
    invoke-static {p2, p3, p8}, Leb;->a([BILby;)I

    move-result p3

    iget p5, p8, Lby;->a:I

    if-ltz p5, :cond_61

    sub-int p6, p4, p3

    if-gt p5, p6, :cond_61

    add-int/2addr p5, p3

    .line 738
    iget-object p6, p0, Lea;->b:Ljava/lang/Object;

    .line 739
    iget-object p6, p0, Lea;->d:Ljava/lang/Object;

    :goto_34
    const/4 p6, 0x0

    if-ge p3, p5, :cond_56

    add-int/lit8 p7, p3, 0x1

    .line 740
    aget-byte p3, p2, p3

    if-gez p3, :cond_43

    .line 741
    invoke-static {p3, p2, p7, p8}, Leb;->a(I[BILby;)I

    move-result p7

    iget p3, p8, Lby;->a:I

    :cond_43
    ushr-int/lit8 v0, p3, 0x3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_53

    const/4 v1, 0x2

    if-eq v0, v1, :cond_50

    .line 742
    invoke-static {p3, p2, p7, p4, p8}, Leb;->a(I[BIILby;)I

    move-result p3

    goto :goto_34

    .line 743
    :cond_50
    iget-object p0, p0, Lea;->c:Lfy;

    throw p6

    .line 744
    :cond_53
    iget-object p0, p0, Lea;->a:Lfy;

    throw p6

    :cond_56
    if-ne p3, p5, :cond_5c

    .line 745
    invoke-interface {p1, p6, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p5

    .line 746
    :cond_5c
    invoke-static {}, Ldl;->e()Ldl;

    move-result-object p0

    throw p0

    .line 737
    :cond_61
    invoke-static {}, Ldl;->a()Ldl;

    move-result-object p0

    throw p0
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
    .registers 41

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

    if-ge v5, v6, :cond_3f9

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

    move v5, v10

    :cond_46
    if-nez v7, :cond_53

    sget-object v7, Lek;->a:[I

    move v9, v2

    move v10, v9

    move v12, v10

    move v13, v12

    move v15, v13

    move-object v14, v7

    move v7, v15

    goto/16 :goto_166

    :cond_53
    add-int/lit8 v7, v5, 0x1

    .line 660
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_72

    and-int/lit16 v5, v5, 0x1fff

    const/16 v9, 0xd

    :goto_5f
    add-int/lit8 v10, v7, 0x1

    .line 661
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_6f

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_5f

    :cond_6f
    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    move v7, v10

    :cond_72
    add-int/lit8 v9, v7, 0x1

    .line 662
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_91

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_7e
    add-int/lit8 v12, v9, 0x1

    .line 663
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_8e

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v12

    goto :goto_7e

    :cond_8e
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v12

    :cond_91
    add-int/lit8 v10, v9, 0x1

    .line 664
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_b0

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_9d
    add-int/lit8 v13, v10, 0x1

    .line 665
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_ad

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    add-int/lit8 v12, v12, 0xd

    move v10, v13

    goto :goto_9d

    :cond_ad
    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    move v10, v13

    :cond_b0
    add-int/lit8 v12, v10, 0x1

    .line 666
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_cf

    and-int/lit16 v10, v10, 0x1fff

    const/16 v13, 0xd

    :goto_bc
    add-int/lit8 v14, v12, 0x1

    .line 667
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_cc

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_bc

    :cond_cc
    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    move v12, v14

    :cond_cf
    add-int/lit8 v13, v12, 0x1

    .line 668
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_ee

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_db
    add-int/lit8 v15, v13, 0x1

    .line 669
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_eb

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_db

    :cond_eb
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_ee
    add-int/lit8 v14, v13, 0x1

    .line 670
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_10f

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_fa
    add-int/lit8 v16, v14, 0x1

    .line 671
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_10b

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_fa

    :cond_10b
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_10f
    add-int/lit8 v15, v14, 0x1

    .line 672
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_132

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_11b
    add-int/lit8 v17, v15, 0x1

    .line 673
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_12d

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_11b

    :cond_12d
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_132
    add-int/lit8 v16, v15, 0x1

    .line 674
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_157

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v2, v16

    const/16 v16, 0xd

    :goto_140
    add-int/lit8 v18, v2, 0x1

    .line 675
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v6, :cond_152

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v16

    or-int/2addr v15, v2

    add-int/lit8 v16, v16, 0xd

    move/from16 v2, v18

    goto :goto_140

    :cond_152
    shl-int v2, v2, v16

    or-int/2addr v15, v2

    move/from16 v16, v18

    :cond_157
    add-int v2, v15, v13

    add-int/2addr v2, v14

    .line 676
    new-array v2, v2, [I

    add-int v14, v5, v5

    add-int/2addr v14, v7

    move v7, v13

    move v13, v10

    move v10, v14

    move-object v14, v2

    move v2, v5

    move/from16 v5, v16

    .line 659
    :goto_166
    sget-object v8, Lek;->b:Lsun/misc/Unsafe;

    iget-object v3, v0, Ler;->c:[Ljava/lang/Object;

    iget-object v6, v0, Ler;->a:Leh;

    .line 677
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move/from16 v20, v5

    mul-int/lit8 v5, v12, 0x3

    .line 678
    new-array v5, v5, [I

    add-int/2addr v12, v12

    .line 679
    new-array v12, v12, [Ljava/lang/Object;

    add-int v22, v15, v7

    move/from16 v23, v15

    move/from16 v7, v20

    move/from16 v24, v22

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_185
    if-ge v7, v4, :cond_3cd

    add-int/lit8 v25, v7, 0x1

    .line 680
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v26, v4

    const v4, 0xd800

    if-lt v7, v4, :cond_1b9

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v4, v25

    const/16 v25, 0xd

    :goto_19a
    add-int/lit8 v27, v4, 0x1

    .line 681
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v28, v15

    const v15, 0xd800

    if-lt v4, v15, :cond_1b3

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v25

    or-int/2addr v7, v4

    add-int/lit8 v25, v25, 0xd

    move/from16 v4, v27

    move/from16 v15, v28

    goto :goto_19a

    :cond_1b3
    shl-int v4, v4, v25

    or-int/2addr v7, v4

    move/from16 v4, v27

    goto :goto_1bd

    :cond_1b9
    move/from16 v28, v15

    move/from16 v4, v25

    :goto_1bd
    add-int/lit8 v15, v4, 0x1

    .line 682
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v25, v15

    const v15, 0xd800

    if-lt v4, v15, :cond_1ef

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v15, v25

    const/16 v25, 0xd

    :goto_1d0
    add-int/lit8 v27, v15, 0x1

    .line 683
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v29, v13

    const v13, 0xd800

    if-lt v15, v13, :cond_1e9

    and-int/lit16 v13, v15, 0x1fff

    shl-int v13, v13, v25

    or-int/2addr v4, v13

    add-int/lit8 v25, v25, 0xd

    move/from16 v15, v27

    move/from16 v13, v29

    goto :goto_1d0

    :cond_1e9
    shl-int v13, v15, v25

    or-int/2addr v4, v13

    move/from16 v15, v27

    goto :goto_1f3

    :cond_1ef
    move/from16 v29, v13

    move/from16 v15, v25

    :goto_1f3
    and-int/lit16 v13, v4, 0xff

    move/from16 v25, v9

    and-int/lit16 v9, v4, 0x400

    if-eqz v9, :cond_201

    add-int/lit8 v9, v21, 0x1

    .line 684
    aput v20, v14, v21

    move/from16 v21, v9

    :cond_201
    const/16 v9, 0x33

    if-ge v13, v9, :cond_304

    add-int/lit8 v9, v10, 0x1

    .line 685
    aget-object v10, v3, v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v6, v10}, Lek;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    const/16 v0, 0x9

    if-ne v13, v0, :cond_216

    :cond_213
    const/16 v18, 0x1

    goto :goto_276

    :cond_216
    const/16 v0, 0x11

    if-eq v13, v0, :cond_213

    const/16 v0, 0x1b

    if-ne v13, v0, :cond_221

    :cond_21e
    const/16 v18, 0x1

    goto :goto_268

    :cond_221
    const/16 v0, 0x31

    if-eq v13, v0, :cond_21e

    const/16 v0, 0xc

    if-eq v13, v0, :cond_255

    const/16 v0, 0x1e

    if-eq v13, v0, :cond_255

    const/16 v0, 0x2c

    if-eq v13, v0, :cond_255

    const/16 v0, 0x32

    if-ne v13, v0, :cond_281

    add-int/lit8 v0, v23, 0x1

    .line 689
    aput v20, v14, v23

    div-int/lit8 v23, v20, 0x3

    add-int/lit8 v30, v9, 0x1

    add-int v23, v23, v23

    .line 690
    aget-object v9, v3, v9

    aput-object v9, v12, v23

    and-int/lit16 v9, v4, 0x800

    if-eqz v9, :cond_252

    add-int/lit8 v9, v30, 0x1

    add-int/lit8 v23, v23, 0x1

    .line 691
    aget-object v30, v3, v30

    aput-object v30, v12, v23

    move/from16 v23, v0

    goto :goto_281

    :cond_252
    move/from16 v23, v0

    goto :goto_273

    :cond_255
    if-nez v11, :cond_265

    div-int/lit8 v0, v20, 0x3

    add-int/lit8 v30, v9, 0x1

    add-int/2addr v0, v0

    const/16 v18, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 688
    aget-object v9, v3, v9

    aput-object v9, v12, v0

    goto :goto_273

    :cond_265
    const/16 v18, 0x1

    goto :goto_281

    .line 699
    :goto_268
    div-int/lit8 v0, v20, 0x3

    add-int/lit8 v30, v9, 0x1

    add-int/2addr v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 687
    aget-object v9, v3, v9

    aput-object v9, v12, v0

    :goto_273
    move/from16 v0, v30

    goto :goto_282

    .line 685
    :goto_276
    div-int/lit8 v0, v20, 0x3

    add-int/2addr v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 686
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v30

    aput-object v30, v12, v0

    :cond_281
    :goto_281
    move v0, v9

    .line 692
    :goto_282
    invoke-virtual {v8, v10}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v9, v9

    and-int/lit16 v10, v4, 0x1000

    const v30, 0xfffff

    move/from16 v31, v0

    const/16 v0, 0x1000

    if-eq v10, v0, :cond_299

    :cond_292
    move/from16 v33, v2

    move/from16 v34, v4

    move-object v0, v5

    const/4 v10, 0x0

    goto :goto_2f1

    :cond_299
    const/16 v0, 0x11

    if-gt v13, v0, :cond_292

    add-int/lit8 v0, v15, 0x1

    .line 693
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const v15, 0xd800

    if-lt v10, v15, :cond_2c7

    and-int/lit16 v10, v10, 0x1fff

    const/16 v30, 0xd

    :goto_2ac
    add-int/lit8 v32, v0, 0x1

    .line 694
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v15, :cond_2c1

    and-int/lit16 v0, v0, 0x1fff

    shl-int v0, v0, v30

    or-int/2addr v10, v0

    add-int/lit8 v30, v30, 0xd

    move/from16 v0, v32

    const v15, 0xd800

    goto :goto_2ac

    :cond_2c1
    shl-int v0, v0, v30

    or-int/2addr v10, v0

    move/from16 v15, v32

    goto :goto_2c8

    :cond_2c7
    move v15, v0

    :goto_2c8
    add-int v0, v2, v2

    div-int/lit8 v30, v10, 0x20

    add-int v0, v0, v30

    move/from16 v33, v2

    .line 695
    aget-object v2, v3, v0

    move/from16 v30, v15

    .line 696
    instance-of v15, v2, Ljava/lang/reflect/Field;

    if-eqz v15, :cond_2db

    .line 697
    check-cast v2, Ljava/lang/reflect/Field;

    goto :goto_2e3

    .line 698
    :cond_2db
    check-cast v2, Ljava/lang/String;

    invoke-static {v6, v2}, Lek;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 699
    aput-object v2, v3, v0

    :goto_2e3
    move/from16 v34, v4

    move-object v0, v5

    .line 700
    invoke-virtual {v8, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v2, v4

    rem-int/lit8 v10, v10, 0x20

    move/from16 v15, v30

    move/from16 v30, v2

    :goto_2f1
    const/16 v2, 0x12

    if-ge v13, v2, :cond_2f6

    goto :goto_300

    :cond_2f6
    const/16 v2, 0x31

    if-gt v13, v2, :cond_300

    add-int/lit8 v2, v24, 0x1

    .line 701
    aput v9, v14, v24

    move/from16 v24, v2

    :cond_300
    :goto_300
    const/16 v18, 0x1

    goto/16 :goto_394

    :cond_304
    move/from16 v33, v2

    move/from16 v34, v4

    move-object v0, v5

    add-int/lit8 v2, v15, 0x1

    .line 702
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_32b

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_318
    add-int/lit8 v15, v2, 0x1

    .line 703
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v5, :cond_328

    and-int/lit16 v2, v2, 0x1fff

    shl-int/2addr v2, v9

    or-int/2addr v4, v2

    add-int/lit8 v9, v9, 0xd

    move v2, v15

    goto :goto_318

    :cond_328
    shl-int/2addr v2, v9

    or-int/2addr v4, v2

    move v2, v15

    :cond_32b
    add-int/lit8 v9, v13, -0x33

    const/16 v15, 0x9

    if-ne v9, v15, :cond_332

    goto :goto_34e

    :cond_332
    const/16 v15, 0x11

    if-eq v9, v15, :cond_34e

    const/16 v15, 0xc

    if-eq v9, v15, :cond_33b

    goto :goto_34b

    :cond_33b
    if-nez v11, :cond_34b

    .line 710
    div-int/lit8 v9, v20, 0x3

    add-int/lit8 v15, v10, 0x1

    add-int/2addr v9, v9

    const/16 v18, 0x1

    add-int/lit8 v9, v9, 0x1

    .line 705
    aget-object v10, v3, v10

    aput-object v10, v12, v9

    move v10, v15

    :cond_34b
    :goto_34b
    const/16 v18, 0x1

    goto :goto_35c

    .line 703
    :cond_34e
    :goto_34e
    div-int/lit8 v9, v20, 0x3

    add-int/lit8 v15, v10, 0x1

    add-int/2addr v9, v9

    const/16 v18, 0x1

    add-int/lit8 v9, v9, 0x1

    .line 704
    aget-object v10, v3, v10

    aput-object v10, v12, v9

    move v10, v15

    :goto_35c
    add-int/2addr v4, v4

    .line 706
    aget-object v9, v3, v4

    .line 707
    instance-of v15, v9, Ljava/lang/reflect/Field;

    if-eqz v15, :cond_366

    .line 708
    check-cast v9, Ljava/lang/reflect/Field;

    goto :goto_36e

    .line 709
    :cond_366
    check-cast v9, Ljava/lang/String;

    invoke-static {v6, v9}, Lek;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 710
    aput-object v9, v3, v4

    :goto_36e
    move-object v15, v6

    .line 711
    invoke-virtual {v8, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    long-to-int v9, v5

    add-int/lit8 v4, v4, 0x1

    .line 712
    aget-object v5, v3, v4

    .line 713
    instance-of v6, v5, Ljava/lang/reflect/Field;

    if-eqz v6, :cond_380

    .line 714
    check-cast v5, Ljava/lang/reflect/Field;

    move-object v6, v15

    goto :goto_389

    .line 715
    :cond_380
    check-cast v5, Ljava/lang/String;

    move-object v6, v15

    invoke-static {v6, v5}, Lek;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 716
    aput-object v5, v3, v4

    .line 717
    :goto_389
    invoke-virtual {v8, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    move v15, v2

    move/from16 v30, v4

    move/from16 v31, v10

    const/4 v10, 0x0

    :goto_394
    add-int/lit8 v2, v20, 0x1

    .line 718
    aput v7, v0, v20

    add-int/lit8 v4, v2, 0x1

    move/from16 v5, v34

    and-int/lit16 v7, v5, 0x200

    if-eqz v7, :cond_3a3

    const/high16 v7, 0x20000000

    goto :goto_3a4

    :cond_3a3
    const/4 v7, 0x0

    :goto_3a4
    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_3ab

    const/high16 v5, 0x10000000

    goto :goto_3ac

    :cond_3ab
    const/4 v5, 0x0

    :goto_3ac
    or-int/2addr v5, v7

    shl-int/lit8 v7, v13, 0x14

    or-int/2addr v5, v7

    or-int/2addr v5, v9

    .line 719
    aput v5, v0, v2

    add-int/lit8 v20, v4, 0x1

    shl-int/lit8 v2, v10, 0x14

    or-int v2, v2, v30

    .line 720
    aput v2, v0, v4

    move-object v5, v0

    move v7, v15

    move/from16 v9, v25

    move/from16 v4, v26

    move/from16 v15, v28

    move/from16 v13, v29

    move/from16 v10, v31

    move/from16 v2, v33

    move-object/from16 v0, p0

    goto/16 :goto_185

    :cond_3cd
    move-object v0, v5

    move/from16 v25, v9

    move/from16 v29, v13

    move/from16 v28, v15

    .line 705
    new-instance v1, Lek;

    move-object v5, v1

    move-object/from16 v2, p0

    iget-object v10, v2, Ler;->a:Leh;

    const/4 v2, 0x0

    move-object v3, v12

    move v12, v2

    const/16 v21, 0x0

    move-object v6, v0

    move-object v7, v3

    move/from16 v8, v25

    move/from16 v9, v29

    move-object v13, v14

    move/from16 v14, v28

    move/from16 v15, v22

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    .line 721
    invoke-direct/range {v5 .. v21}, Lek;-><init>([I[Ljava/lang/Object;IILeh;ZZ[IIILfs;Ldv;Lfh;Lej;Lff;[B)V

    return-object v1

    :cond_3f9
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

    iget-object p0, p0, Lek;->d:[Ljava/lang/Object;

    .line 70
    aput-object v0, p0, p1

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
    .registers 9

    if-eqz p3, :cond_4a

    .line 1213
    invoke-direct {p0, p4}, Lek;->b(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lff;->b(Ljava/lang/Object;)Lea;

    move-result-object p0

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

    move-result p4

    if-eqz p4, :cond_4a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    move-object v0, p1

    check-cast v0, Lco;

    iget-object v1, v0, Lco;->a:Lcn;

    const/4 v2, 0x2

    .line 1216
    invoke-virtual {v1, p2, v2}, Lcn;->f(II)V

    iget-object v1, v0, Lco;->a:Lcn;

    .line 1217
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Leb;->a(Lea;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 1218
    invoke-virtual {v1, v2}, Lcn;->h(I)V

    iget-object v0, v0, Lco;->a:Lcn;

    .line 1219
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    invoke-static {v0, p0, v1, p4}, Leb;->a(Lcn;Lea;Ljava/lang/Object;Ljava/lang/Object;)V

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

    if-eqz v2, :cond_2e

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

    move-result p0

    .line 497
    invoke-static {p0}, Lek;->h(I)J

    move-result-wide v0

    .line 498
    invoke-static {p0}, Lek;->g(I)I

    move-result p0

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_f8

    .line 513
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 522
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 499
    :pswitch_29
    invoke-static {p1, v0, v1}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_30

    return v5

    :cond_30
    return v4

    .line 500
    :pswitch_31
    invoke-static {p1, v0, v1}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3a

    return v5

    :cond_3a
    return v4

    .line 501
    :pswitch_3b
    invoke-static {p1, v0, v1}, Lfr;->a(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_42

    return v5

    :cond_42
    return v4

    .line 502
    :pswitch_43
    invoke-static {p1, v0, v1}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_4c

    return v5

    :cond_4c
    return v4

    .line 503
    :pswitch_4d
    invoke-static {p1, v0, v1}, Lfr;->a(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_54

    return v5

    :cond_54
    return v4

    .line 504
    :pswitch_55
    invoke-static {p1, v0, v1}, Lfr;->a(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_5c

    return v5

    :cond_5c
    return v4

    .line 505
    :pswitch_5d
    invoke-static {p1, v0, v1}, Lfr;->a(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_64

    return v5

    :cond_64
    return v4

    .line 506
    :pswitch_65
    sget-object p0, Lck;->b:Lck;

    invoke-static {p1, v0, v1}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lck;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_72

    return v5

    :cond_72
    return v4

    .line 507
    :pswitch_73
    invoke-static {p1, v0, v1}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_7a

    return v5

    :cond_7a
    return v4

    .line 508
    :pswitch_7b
    invoke-static {p1, v0, v1}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 509
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_8d

    .line 510
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_8c

    return v5

    :cond_8c
    return v4

    .line 511
    :cond_8d
    instance-of p1, p0, Lck;

    if-eqz p1, :cond_9b

    .line 512
    sget-object p1, Lck;->b:Lck;

    invoke-virtual {p1, p0}, Lck;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9a

    return v5

    :cond_9a
    return v4

    .line 523
    :cond_9b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 513
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 514
    :pswitch_a1
    invoke-static {p1, v0, v1}, Lfr;->c(Ljava/lang/Object;J)Z

    move-result p0

    return p0

    .line 515
    :pswitch_a6
    invoke-static {p1, v0, v1}, Lfr;->a(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_ad

    return v5

    :cond_ad
    return v4

    .line 516
    :pswitch_ae
    invoke-static {p1, v0, v1}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_b7

    return v5

    :cond_b7
    return v4

    .line 517
    :pswitch_b8
    invoke-static {p1, v0, v1}, Lfr;->a(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_bf

    return v5

    :cond_bf
    return v4

    .line 518
    :pswitch_c0
    invoke-static {p1, v0, v1}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_c9

    return v5

    :cond_c9
    return v4

    .line 519
    :pswitch_ca
    invoke-static {p1, v0, v1}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_d3

    return v5

    :cond_d3
    return v4

    .line 520
    :pswitch_d4
    invoke-static {p1, v0, v1}, Lfr;->d(Ljava/lang/Object;J)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_de

    return v5

    :cond_de
    return v4

    .line 521
    :pswitch_df
    invoke-static {p1, v0, v1}, Lfr;->e(Ljava/lang/Object;J)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-eqz p0, :cond_ea

    return v5

    :cond_ea
    return v4

    .line 523
    :cond_eb
    invoke-static {p1, v1, v2}, Lfr;->a(Ljava/lang/Object;J)I

    move-result p0

    ushr-int/lit8 p1, v0, 0x14

    shl-int p1, v5, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_f7

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

    move-result p0

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v0, p0

    .line 551
    invoke-static {p1, v0, v1}, Lfr;->a(Ljava/lang/Object;J)I

    move-result p0

    if-ne p0, p2, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private final a(Ljava/lang/Object;IIII)Z
    .registers 7

    const v0, 0xfffff

    if-eq p3, v0, :cond_d

    and-int p0, p4, p5

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0

    .line 524
    :cond_d
    invoke-direct {p0, p1, p2}, Lek;->a(Ljava/lang/Object;I)Z

    move-result p0

    return p0
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
    .registers 2

    div-int/lit8 p1, p1, 0x3

    iget-object p0, p0, Lek;->d:[Ljava/lang/Object;

    add-int/2addr p1, p1

    .line 67
    aget-object p0, p0, p1

    return-object p0
.end method

.method private final b(Ljava/lang/Object;I)V
    .registers 7

    .line 1060
    invoke-direct {p0, p2}, Lek;->f(I)I

    move-result p0

    const p2, 0xfffff

    and-int/2addr p2, p0

    int-to-long v0, p2

    const-wide/32 v2, 0xfffff

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1d

    .line 1061
    invoke-static {p1, v0, v1}, Lfr;->a(Ljava/lang/Object;J)I

    move-result p2

    const/4 v2, 0x1

    ushr-int/lit8 p0, p0, 0x14

    shl-int p0, v2, p0

    or-int/2addr p0, p2

    .line 1062
    invoke-static {p1, v0, v1, p0}, Lfr;->a(Ljava/lang/Object;JI)V

    :cond_1d
    return-void
.end method

.method private final b(Ljava/lang/Object;II)V
    .registers 6

    .line 1063
    invoke-direct {p0, p3}, Lek;->f(I)I

    move-result p0

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v0, p0

    .line 1064
    invoke-static {p1, v0, v1, p2}, Lfr;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Lgb;)V
    .registers 20

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

    move v11, v8

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_2c
    if-ge v10, v6, :cond_48c

    .line 1071
    invoke-direct {v0, v10}, Lek;->e(I)I

    move-result v13

    .line 1072
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v14

    .line 1073
    invoke-static {v13}, Lek;->g(I)I

    move-result v15

    iget-boolean v4, v0, Lek;->i:Z

    if-eqz v4, :cond_40

    :cond_3e
    const/4 v4, 0x0

    goto :goto_59

    :cond_40
    const/16 v4, 0x11

    if-gt v15, v4, :cond_3e

    .line 1078
    iget-object v4, v0, Lek;->c:[I

    add-int/lit8 v16, v10, 0x2

    .line 1074
    aget v4, v4, v16

    and-int v9, v4, v8

    if-eq v9, v11, :cond_54

    int-to-long v11, v9

    .line 1075
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v11, v9

    :cond_54
    ushr-int/lit8 v4, v4, 0x14

    const/4 v9, 0x1

    shl-int v4, v9, v4

    :goto_59
    if-nez v5, :cond_5c

    goto :goto_74

    .line 1076
    :cond_5c
    invoke-static {v5}, Lej;->a(Ljava/util/Map$Entry;)I

    move-result v9

    if-gt v9, v14, :cond_74

    .line 1077
    invoke-static {v2, v5}, Lej;->a(Lgb;Ljava/util/Map$Entry;)V

    .line 1078
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_59

    :cond_72
    const/4 v5, 0x0

    goto :goto_59

    .line 1079
    :cond_74
    :goto_74
    invoke-static {v13}, Lek;->h(I)J

    move-result-wide v8

    packed-switch v15, :pswitch_data_4a8

    :cond_7b
    :goto_7b
    const/4 v13, 0x0

    goto/16 :goto_485

    .line 1080
    :pswitch_7e
    invoke-direct {v0, v1, v14, v10}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 1081
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v10}, Lek;->a(I)Les;

    move-result-object v8

    .line 1082
    invoke-interface {v2, v14, v4, v8}, Lgb;->b(ILjava/lang/Object;Les;)V

    goto :goto_7b

    .line 1083
    :pswitch_90
    invoke-direct {v0, v1, v14, v10}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 1084
    invoke-static {v1, v8, v9}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->e(IJ)V

    goto :goto_7b

    .line 1085
    :pswitch_9e
    invoke-direct {v0, v1, v14, v10}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 1086
    invoke-static {v1, v8, v9}, Lek;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->f(II)V

    goto :goto_7b

    .line 1087
    :pswitch_ac
    invoke-direct {v0, v1, v14, v10}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 1088
    invoke-static {v1, v8, v9}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->b(IJ)V

    goto :goto_7b

    .line 1089
    :pswitch_ba
    invoke-direct {v0, v1, v14, v10}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 1090
    invoke-static {v1, v8, v9}, Lek;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->a(II)V

    goto :goto_7b

    .line 1091
    :pswitch_c8
    invoke-direct {v0, v1, v14, v10}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 1092
    invoke-static {v1, v8, v9}, Lek;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->b(II)V

    goto :goto_7b

    .line 1093
    :pswitch_d6
    invoke-direct {v0, v1, v14, v10}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 1094
    invoke-static {v1, v8, v9}, Lek;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->e(II)V

    goto :goto_7b

    .line 1095
    :pswitch_e4
    invoke-direct {v0, v1, v14, v10}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 1096
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lck;

    invoke-interface {v2, v14, v4}, Lgb;->a(ILck;)V

    goto :goto_7b

    .line 1097
    :pswitch_f4
    invoke-direct {v0, v1, v14, v10}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 1098
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1099
    invoke-direct {v0, v10}, Lek;->a(I)Les;

    move-result-object v8

    invoke-interface {v2, v14, v4, v8}, Lgb;->a(ILjava/lang/Object;Les;)V

    goto/16 :goto_7b

    .line 1100
    :pswitch_107
    invoke-direct {v0, v1, v14, v10}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 1101
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Lek;->a(ILjava/lang/Object;Lgb;)V

    goto/16 :goto_7b

    .line 1102
    :pswitch_116
    invoke-direct {v0, v1, v14, v10}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 1103
    invoke-static {v1, v8, v9}, Lek;->f(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->a(IZ)V

    goto/16 :goto_7b

    .line 1104
    :pswitch_125
    invoke-direct {v0, v1, v14, v10}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 1105
    invoke-static {v1, v8, v9}, Lek;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->d(II)V

    goto/16 :goto_7b

    .line 1106
    :pswitch_134
    invoke-direct {v0, v1, v14, v10}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 1107
    invoke-static {v1, v8, v9}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->d(IJ)V

    goto/16 :goto_7b

    .line 1108
    :pswitch_143
    invoke-direct {v0, v1, v14, v10}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 1109
    invoke-static {v1, v8, v9}, Lek;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->c(II)V

    goto/16 :goto_7b

    .line 1110
    :pswitch_152
    invoke-direct {v0, v1, v14, v10}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 1111
    invoke-static {v1, v8, v9}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->c(IJ)V

    goto/16 :goto_7b

    .line 1112
    :pswitch_161
    invoke-direct {v0, v1, v14, v10}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 1113
    invoke-static {v1, v8, v9}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->a(IJ)V

    goto/16 :goto_7b

    .line 1114
    :pswitch_170
    invoke-direct {v0, v1, v14, v10}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 1115
    invoke-static {v1, v8, v9}, Lek;->c(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->a(IF)V

    goto/16 :goto_7b

    .line 1116
    :pswitch_17f
    invoke-direct {v0, v1, v14, v10}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 1117
    invoke-static {v1, v8, v9}, Lek;->b(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->a(ID)V

    goto/16 :goto_7b

    .line 1118
    :pswitch_18e
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v14, v4, v10}, Lek;->a(Lgb;ILjava/lang/Object;I)V

    goto/16 :goto_7b

    .line 1119
    :pswitch_197
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    .line 1120
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1121
    invoke-direct {v0, v10}, Lek;->a(I)Les;

    move-result-object v9

    .line 1122
    invoke-static {v4, v8, v2, v9}, Leu;->b(ILjava/util/List;Lgb;Les;)V

    goto/16 :goto_7b

    .line 1123
    :pswitch_1aa
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v13, 0x1

    .line 1124
    invoke-static {v4, v8, v2, v13}, Leu;->e(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_7b

    :pswitch_1ba
    const/4 v13, 0x1

    .line 1125
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1126
    invoke-static {v4, v8, v2, v13}, Leu;->j(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_7b

    :pswitch_1ca
    const/4 v13, 0x1

    .line 1127
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1128
    invoke-static {v4, v8, v2, v13}, Leu;->g(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_7b

    :pswitch_1da
    const/4 v13, 0x1

    .line 1129
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1130
    invoke-static {v4, v8, v2, v13}, Leu;->l(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_7b

    :pswitch_1ea
    const/4 v13, 0x1

    .line 1131
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1132
    invoke-static {v4, v8, v2, v13}, Leu;->m(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_7b

    :pswitch_1fa
    const/4 v13, 0x1

    .line 1133
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1134
    invoke-static {v4, v8, v2, v13}, Leu;->i(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_7b

    :pswitch_20a
    const/4 v13, 0x1

    .line 1135
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1136
    invoke-static {v4, v8, v2, v13}, Leu;->n(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_7b

    :pswitch_21a
    const/4 v13, 0x1

    .line 1137
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1138
    invoke-static {v4, v8, v2, v13}, Leu;->k(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_7b

    :pswitch_22a
    const/4 v13, 0x1

    .line 1139
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1140
    invoke-static {v4, v8, v2, v13}, Leu;->f(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_7b

    :pswitch_23a
    const/4 v13, 0x1

    .line 1141
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1142
    invoke-static {v4, v8, v2, v13}, Leu;->h(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_7b

    :pswitch_24a
    const/4 v13, 0x1

    .line 1143
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1144
    invoke-static {v4, v8, v2, v13}, Leu;->d(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_7b

    :pswitch_25a
    const/4 v13, 0x1

    .line 1145
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1146
    invoke-static {v4, v8, v2, v13}, Leu;->c(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_7b

    :pswitch_26a
    const/4 v13, 0x1

    .line 1147
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1148
    invoke-static {v4, v8, v2, v13}, Leu;->b(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_7b

    :pswitch_27a
    const/4 v13, 0x1

    .line 1149
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1150
    invoke-static {v4, v8, v2, v13}, Leu;->a(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_7b

    .line 1151
    :pswitch_28a
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v13, 0x0

    .line 1152
    invoke-static {v4, v8, v2, v13}, Leu;->e(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_485

    :pswitch_29a
    const/4 v13, 0x0

    .line 1153
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1154
    invoke-static {v4, v8, v2, v13}, Leu;->j(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_485

    :pswitch_2aa
    const/4 v13, 0x0

    .line 1155
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1156
    invoke-static {v4, v8, v2, v13}, Leu;->g(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_485

    :pswitch_2ba
    const/4 v13, 0x0

    .line 1157
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1158
    invoke-static {v4, v8, v2, v13}, Leu;->l(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_485

    :pswitch_2ca
    const/4 v13, 0x0

    .line 1159
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1160
    invoke-static {v4, v8, v2, v13}, Leu;->m(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_485

    :pswitch_2da
    const/4 v13, 0x0

    .line 1161
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1162
    invoke-static {v4, v8, v2, v13}, Leu;->i(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_485

    .line 1163
    :pswitch_2ea
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1164
    invoke-static {v4, v8, v2}, Leu;->b(ILjava/util/List;Lgb;)V

    goto/16 :goto_7b

    .line 1165
    :pswitch_2f9
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    .line 1166
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1167
    invoke-direct {v0, v10}, Lek;->a(I)Les;

    move-result-object v9

    .line 1168
    invoke-static {v4, v8, v2, v9}, Leu;->a(ILjava/util/List;Lgb;Les;)V

    goto/16 :goto_7b

    .line 1169
    :pswitch_30c
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1170
    invoke-static {v4, v8, v2}, Leu;->a(ILjava/util/List;Lgb;)V

    goto/16 :goto_7b

    .line 1171
    :pswitch_31b
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v13, 0x0

    .line 1172
    invoke-static {v4, v8, v2, v13}, Leu;->n(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_485

    :pswitch_32b
    const/4 v13, 0x0

    .line 1173
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1174
    invoke-static {v4, v8, v2, v13}, Leu;->k(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_485

    :pswitch_33b
    const/4 v13, 0x0

    .line 1175
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1176
    invoke-static {v4, v8, v2, v13}, Leu;->f(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_485

    :pswitch_34b
    const/4 v13, 0x0

    .line 1177
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1178
    invoke-static {v4, v8, v2, v13}, Leu;->h(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_485

    :pswitch_35b
    const/4 v13, 0x0

    .line 1179
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1180
    invoke-static {v4, v8, v2, v13}, Leu;->d(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_485

    :pswitch_36b
    const/4 v13, 0x0

    .line 1181
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1182
    invoke-static {v4, v8, v2, v13}, Leu;->c(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_485

    :pswitch_37b
    const/4 v13, 0x0

    .line 1183
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1184
    invoke-static {v4, v8, v2, v13}, Leu;->b(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_485

    :pswitch_38b
    const/4 v13, 0x0

    .line 1185
    invoke-direct {v0, v10}, Lek;->d(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1186
    invoke-static {v4, v8, v2, v13}, Leu;->a(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_485

    :pswitch_39b
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_485

    .line 1187
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v10}, Lek;->a(I)Les;

    move-result-object v8

    .line 1188
    invoke-interface {v2, v14, v4, v8}, Lgb;->b(ILjava/lang/Object;Les;)V

    goto/16 :goto_485

    :pswitch_3ac
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_485

    .line 1189
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->e(IJ)V

    goto/16 :goto_485

    :pswitch_3b9
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_485

    .line 1190
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->f(II)V

    goto/16 :goto_485

    :pswitch_3c6
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_485

    .line 1191
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->b(IJ)V

    goto/16 :goto_485

    :pswitch_3d3
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_485

    .line 1192
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->a(II)V

    goto/16 :goto_485

    :pswitch_3e0
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_485

    .line 1193
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->b(II)V

    goto/16 :goto_485

    :pswitch_3ed
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_485

    .line 1194
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->e(II)V

    goto/16 :goto_485

    :pswitch_3fa
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_485

    .line 1195
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lck;

    invoke-interface {v2, v14, v4}, Lgb;->a(ILck;)V

    goto/16 :goto_485

    :pswitch_409
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_485

    .line 1196
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1197
    invoke-direct {v0, v10}, Lek;->a(I)Les;

    move-result-object v8

    invoke-interface {v2, v14, v4, v8}, Lgb;->a(ILjava/lang/Object;Les;)V

    goto/16 :goto_485

    :pswitch_41a
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_485

    .line 1198
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Lek;->a(ILjava/lang/Object;Lgb;)V

    goto :goto_485

    :pswitch_426
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_485

    .line 1199
    invoke-static {v1, v8, v9}, Lfr;->c(Ljava/lang/Object;J)Z

    move-result v4

    .line 1200
    invoke-interface {v2, v14, v4}, Lgb;->a(IZ)V

    goto :goto_485

    :pswitch_432
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_485

    .line 1201
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->d(II)V

    goto :goto_485

    :pswitch_43e
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_485

    .line 1202
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->d(IJ)V

    goto :goto_485

    :pswitch_44a
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_485

    .line 1203
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lgb;->c(II)V

    goto :goto_485

    :pswitch_456
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_485

    .line 1204
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->c(IJ)V

    goto :goto_485

    :pswitch_462
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_485

    .line 1205
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lgb;->a(IJ)V

    goto :goto_485

    :pswitch_46e
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_485

    .line 1206
    invoke-static {v1, v8, v9}, Lfr;->d(Ljava/lang/Object;J)F

    move-result v4

    .line 1207
    invoke-interface {v2, v14, v4}, Lgb;->a(IF)V

    goto :goto_485

    :pswitch_47a
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_485

    .line 1208
    invoke-static {v1, v8, v9}, Lfr;->e(Ljava/lang/Object;J)D

    move-result-wide v8

    .line 1209
    invoke-interface {v2, v14, v8, v9}, Lgb;->a(ID)V

    :cond_485
    :goto_485
    add-int/lit8 v10, v10, 0x3

    const v8, 0xfffff

    goto/16 :goto_2c

    :cond_48c
    :goto_48c
    if-eqz v5, :cond_4a1

    .line 1210
    invoke-static {v2, v5}, Lej;->a(Lgb;Ljava/util/Map$Entry;)V

    .line 1211
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_48c

    :cond_49f
    const/4 v5, 0x0

    goto :goto_48c

    :cond_4a1
    iget-object v0, v0, Lek;->o:Lfh;

    .line 1212
    invoke-static {v0, v1, v2}, Lek;->a(Lfh;Ljava/lang/Object;Lgb;)V

    return-void

    nop

    :pswitch_data_4a8
    .packed-switch 0x0
        :pswitch_47a
        :pswitch_46e
        :pswitch_462
        :pswitch_456
        :pswitch_44a
        :pswitch_43e
        :pswitch_432
        :pswitch_426
        :pswitch_41a
        :pswitch_409
        :pswitch_3fa
        :pswitch_3ed
        :pswitch_3e0
        :pswitch_3d3
        :pswitch_3c6
        :pswitch_3b9
        :pswitch_3ac
        :pswitch_39b
        :pswitch_38b
        :pswitch_37b
        :pswitch_36b
        :pswitch_35b
        :pswitch_34b
        :pswitch_33b
        :pswitch_32b
        :pswitch_31b
        :pswitch_30c
        :pswitch_2f9
        :pswitch_2ea
        :pswitch_2da
        :pswitch_2ca
        :pswitch_2ba
        :pswitch_2aa
        :pswitch_29a
        :pswitch_28a
        :pswitch_27a
        :pswitch_26a
        :pswitch_25a
        :pswitch_24a
        :pswitch_23a
        :pswitch_22a
        :pswitch_21a
        :pswitch_20a
        :pswitch_1fa
        :pswitch_1ea
        :pswitch_1da
        :pswitch_1ca
        :pswitch_1ba
        :pswitch_1aa
        :pswitch_197
        :pswitch_18e
        :pswitch_17f
        :pswitch_170
        :pswitch_161
        :pswitch_152
        :pswitch_143
        :pswitch_134
        :pswitch_125
        :pswitch_116
        :pswitch_107
        :pswitch_f4
        :pswitch_e4
        :pswitch_d6
        :pswitch_c8
        :pswitch_ba
        :pswitch_ac
        :pswitch_9e
        :pswitch_90
        :pswitch_7e
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

    if-eqz v0, :cond_32

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
    if-ge v0, v13, :cond_359

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

    if-le v5, v1, :cond_3a

    div-int/lit8 v2, v2, 0x3

    .line 892
    invoke-direct {v15, v5, v2}, Lek;->a(II)I

    move-result v0

    goto :goto_3e

    .line 893
    :cond_3a
    invoke-direct {v15, v5}, Lek;->i(I)I

    move-result v0

    :goto_3e
    move v2, v0

    if-eq v2, v10, :cond_327

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

    if-gt v0, v10, :cond_1ff

    iget-object v10, v15, Lek;->c:[I

    add-int/lit8 v21, v2, 0x2

    .line 897
    aget v10, v10, v21

    ushr-int/lit8 v21, v10, 0x14

    const/4 v5, 0x1

    shl-int v21, v5, v21

    const v13, 0xfffff

    and-int/2addr v10, v13

    if-ne v10, v7, :cond_70

    move/from16 v23, v1

    move/from16 v19, v2

    move v10, v7

    move-object/from16 v7, v18

    goto :goto_86

    :cond_70
    move/from16 v23, v1

    move/from16 v19, v2

    if-eq v7, v13, :cond_7d

    int-to-long v1, v7

    move-object/from16 v7, v18

    .line 898
    invoke-virtual {v7, v14, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7f

    :cond_7d
    move-object/from16 v7, v18

    :goto_7f
    if-eq v10, v13, :cond_86

    int-to-long v1, v10

    .line 899
    invoke-virtual {v7, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    :cond_86
    :goto_86
    const/4 v1, 0x5

    packed-switch v0, :pswitch_data_374

    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v19, p3

    goto/16 :goto_1f3

    :pswitch_92
    if-nez v3, :cond_ab

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

    goto/16 :goto_1bc

    :cond_ab
    move/from16 v13, v19

    move/from16 v19, p3

    goto :goto_115

    :pswitch_b0
    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v3, :cond_115

    .line 903
    invoke-static {v12, v4, v11}, Leb;->a([BILby;)I

    move-result v0

    iget v1, v11, Lby;->a:I

    .line 904
    invoke-static {v1}, Lcl;->a(I)I

    move-result v1

    .line 905
    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1e7

    :pswitch_c5
    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v3, :cond_115

    .line 906
    invoke-static {v12, v4, v11}, Leb;->a([BILby;)I

    move-result v0

    iget v1, v11, Lby;->a:I

    .line 907
    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1e7

    :pswitch_d6
    move/from16 v13, v19

    const/4 v0, 0x2

    move/from16 v19, p3

    if-ne v3, v0, :cond_115

    .line 908
    invoke-static {v12, v4, v11}, Leb;->e([BILby;)I

    move-result v0

    iget-object v1, v11, Lby;->c:Ljava/lang/Object;

    .line 909
    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1e7

    :pswitch_e8
    move/from16 v13, v19

    const/4 v0, 0x2

    move/from16 v19, p3

    if-ne v3, v0, :cond_113

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

    if-nez v1, :cond_109

    iget-object v1, v11, Lby;->c:Ljava/lang/Object;

    .line 913
    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_16c

    :cond_109
    iget-object v3, v11, Lby;->c:Ljava/lang/Object;

    .line 914
    invoke-static {v1, v3}, Ldj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 915
    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_16c

    :cond_113
    move/from16 v2, p4

    :cond_115
    :goto_115
    const v18, 0xfffff

    goto/16 :goto_1f3

    :pswitch_11a
    move/from16 v2, p4

    move/from16 v18, v13

    move/from16 v13, v19

    const/4 v0, 0x2

    move/from16 v19, p3

    if-eq v3, v0, :cond_127

    goto/16 :goto_1f3

    :cond_127
    const/high16 v0, 0x20000000

    and-int v0, v23, v0

    if-eqz v0, :cond_132

    .line 917
    invoke-static {v12, v4, v11}, Leb;->d([BILby;)I

    move-result v0

    goto :goto_136

    .line 916
    :cond_132
    invoke-static {v12, v4, v11}, Leb;->c([BILby;)I

    move-result v0

    .line 917
    :goto_136
    iget-object v1, v11, Lby;->c:Ljava/lang/Object;

    .line 918
    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_16c

    :pswitch_13c
    move/from16 v2, p4

    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v3, :cond_1f3

    .line 919
    invoke-static {v12, v4, v11}, Leb;->b([BILby;)I

    move-result v0

    iget-wide v3, v11, Lby;->b:J

    const-wide/16 v22, 0x0

    cmp-long v1, v3, v22

    if-eqz v1, :cond_153

    goto :goto_155

    :cond_153
    move/from16 v5, v16

    .line 920
    :goto_155
    invoke-static {v14, v8, v9, v5}, Lfr;->a(Ljava/lang/Object;JZ)V

    goto :goto_16c

    :pswitch_159
    move/from16 v2, p4

    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v19, p3

    if-ne v3, v1, :cond_1f3

    .line 921
    invoke-static {v12, v4}, Leb;->a([BI)I

    move-result v0

    invoke-virtual {v7, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    :goto_16c
    or-int v6, v6, v21

    move-object v9, v7

    move v7, v10

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v29, v13

    move v13, v2

    move/from16 v2, v29

    goto/16 :goto_18

    :pswitch_17a
    move/from16 v2, p4

    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v19, p3

    if-ne v3, v5, :cond_1f3

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

    goto :goto_1e7

    :pswitch_195
    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v3, :cond_1f3

    .line 923
    invoke-static {v12, v4, v11}, Leb;->a([BILby;)I

    move-result v0

    iget v1, v11, Lby;->a:I

    .line 924
    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1e7

    :pswitch_1a7
    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v3, :cond_1f3

    .line 925
    invoke-static {v12, v4, v11}, Leb;->b([BILby;)I

    move-result v17

    iget-wide v4, v11, Lby;->b:J

    move-object v0, v7

    move-object/from16 v1, p1

    move-wide v2, v8

    .line 926
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_1bc
    or-int v6, v6, v21

    move-object v9, v7

    move v7, v10

    move v2, v13

    move/from16 v0, v17

    goto :goto_1ec

    :pswitch_1c4
    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v19, p3

    if-ne v3, v1, :cond_1f3

    .line 927
    invoke-static {v12, v4}, Leb;->d([BI)F

    move-result v0

    invoke-static {v14, v8, v9, v0}, Lfr;->a(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v4, 0x4

    goto :goto_1e7

    :pswitch_1d6
    move/from16 v18, v13

    move/from16 v13, v19

    move/from16 v19, p3

    if-ne v3, v5, :cond_1f3

    .line 928
    invoke-static {v12, v4}, Leb;->c([BI)D

    move-result-wide v0

    invoke-static {v14, v8, v9, v0, v1}, Lfr;->a(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v4, 0x8

    :goto_1e7
    or-int v6, v6, v21

    move-object v9, v7

    move v7, v10

    move v2, v13

    :goto_1ec
    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_18

    :cond_1f3
    :goto_1f3
    move v2, v4

    move-object v8, v7

    move/from16 v25, v10

    move/from16 v20, v13

    move-object v7, v14

    move-object v9, v15

    const/16 v18, -0x1

    goto/16 :goto_336

    :cond_1ff
    move/from16 v19, p3

    move/from16 v23, v1

    move v13, v2

    move-object/from16 v10, v18

    const v18, 0xfffff

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_2be

    const/16 v1, 0x31

    if-gt v0, v1, :cond_26b

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

    if-eq v0, v15, :cond_260

    :goto_248
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v10, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v6, v24

    move/from16 v7, v25

    move-object/from16 v9, v28

    goto/16 :goto_18

    :cond_260
    move-object/from16 v9, p0

    move-object/from16 v7, p1

    move v2, v0

    move/from16 v6, v24

    move-object/from16 v8, v28

    goto/16 :goto_336

    :cond_26b
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

    if-eq v9, v0, :cond_2a1

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

    if-eq v0, v15, :cond_260

    goto :goto_248

    :cond_2a1
    move/from16 v0, p3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2a8

    goto/16 :goto_318

    :cond_2a8
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

    if-eq v0, v15, :cond_260

    goto :goto_248

    :cond_2be
    move v0, v3

    move v15, v4

    move/from16 v24, v6

    move/from16 v25, v7

    move-wide/from16 v26, v8

    move-object/from16 v28, v10

    move/from16 v20, v13

    const/4 v1, 0x2

    const/16 v18, -0x1

    if-ne v0, v1, :cond_318

    move-object/from16 v7, p1

    move-wide/from16 v0, v26

    move-object/from16 v8, v28

    .line 929
    invoke-virtual {v8, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldi;

    .line 930
    invoke-interface {v2}, Ldi;->a()Z

    move-result v3

    if-nez v3, :cond_2f2

    .line 931
    invoke-interface {v2}, Ldi;->size()I

    move-result v3

    if-eqz v3, :cond_2e9

    add-int/2addr v3, v3

    goto :goto_2eb

    :cond_2e9
    const/16 v3, 0xa

    .line 932
    :goto_2eb
    invoke-interface {v2, v3}, Ldi;->a(I)Ldi;

    move-result-object v2

    .line 933
    invoke-virtual {v8, v7, v0, v1, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_2f2
    move-object/from16 v9, p0

    move-object v5, v2

    move v3, v15

    move/from16 v10, v20

    .line 934
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

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object v14, v7

    move-object v15, v9

    move v2, v10

    move/from16 v10, v18

    move/from16 v1, v19

    move/from16 v6, v24

    goto :goto_354

    :cond_318
    :goto_318
    move-object/from16 v9, p0

    move-object/from16 v7, p1

    move v3, v15

    move/from16 v10, v20

    move-object/from16 v8, v28

    move v2, v3

    move/from16 v20, v10

    move/from16 v6, v24

    goto :goto_336

    :cond_327
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
    :goto_336
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

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object v14, v7

    move-object v15, v9

    move/from16 v10, v18

    move/from16 v1, v19

    move/from16 v2, v20

    :goto_354
    move/from16 v7, v25

    move-object v9, v8

    goto/16 :goto_18

    :cond_359
    move/from16 v24, v6

    move v10, v7

    move-object v8, v9

    move-object v7, v14

    const v1, 0xfffff

    if-eq v10, v1, :cond_369

    int-to-long v1, v10

    move/from16 v6, v24

    .line 941
    invoke-virtual {v8, v7, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_369
    move/from16 v1, p4

    if-ne v0, v1, :cond_36e

    return-void

    .line 942
    :cond_36e
    invoke-static {}, Ldl;->e()Ldl;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_374
    .packed-switch 0x0
        :pswitch_1d6
        :pswitch_1c4
        :pswitch_1a7
        :pswitch_1a7
        :pswitch_195
        :pswitch_17a
        :pswitch_159
        :pswitch_13c
        :pswitch_11a
        :pswitch_e8
        :pswitch_d6
        :pswitch_195
        :pswitch_c5
        :pswitch_159
        :pswitch_17a
        :pswitch_b0
        :pswitch_92
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
    .registers 2

    div-int/lit8 p1, p1, 0x3

    iget-object p0, p0, Lek;->d:[Ljava/lang/Object;

    add-int/2addr p1, p1

    add-int/lit8 p1, p1, 0x1

    .line 66
    aget-object p0, p0, p1

    check-cast p0, Ldh;

    return-object p0
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

    move-result p0

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private final d(I)I
    .registers 2

    iget-object p0, p0, Lek;->c:[I

    .line 722
    aget p0, p0, p1

    return p0
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
    .registers 2

    iget-object p0, p0, Lek;->c:[I

    add-int/lit8 p1, p1, 0x1

    .line 1066
    aget p0, p0, p1

    return p0
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
    .registers 2

    iget-object p0, p0, Lek;->c:[I

    add-int/lit8 p1, p1, 0x2

    .line 1053
    aget p0, p0, p1

    return p0
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

    if-ge v3, v7, :cond_469

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

    packed-switch v9, :pswitch_data_4c2

    goto/16 :goto_465

    .line 81
    :pswitch_3f
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_465

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

    goto/16 :goto_371

    .line 85
    :pswitch_55
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_465

    .line 86
    invoke-static {p1, v11, v12}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcn;->d(IJ)I

    move-result v7

    goto/16 :goto_371

    .line 87
    :pswitch_65
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_465

    .line 88
    invoke-static {p1, v11, v12}, Lek;->d(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->d(II)I

    move-result v7

    goto/16 :goto_371

    .line 89
    :pswitch_75
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_465

    .line 90
    invoke-static {v8}, Lcn;->p(I)I

    move-result v7

    goto/16 :goto_371

    .line 91
    :pswitch_81
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_465

    .line 92
    invoke-static {v8}, Lcn;->o(I)I

    move-result v7

    goto/16 :goto_371

    .line 93
    :pswitch_8d
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_465

    .line 94
    invoke-static {p1, v11, v12}, Lek;->d(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->e(II)I

    move-result v7

    goto/16 :goto_371

    .line 95
    :pswitch_9d
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_465

    .line 96
    invoke-static {p1, v11, v12}, Lek;->d(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->c(II)I

    move-result v7

    goto/16 :goto_371

    .line 97
    :pswitch_ad
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_465

    .line 98
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lck;

    .line 99
    invoke-static {v8, v7}, Lcn;->a(ILck;)I

    move-result v7

    goto/16 :goto_371

    .line 100
    :pswitch_bf
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_465

    .line 101
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 102
    invoke-direct {p0, v3}, Lek;->a(I)Les;

    move-result-object v9

    invoke-static {v8, v7, v9}, Leu;->a(ILjava/lang/Object;Les;)I

    move-result v7

    goto/16 :goto_371

    .line 103
    :pswitch_d3
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_465

    .line 104
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 105
    instance-of v9, v7, Lck;

    if-eqz v9, :cond_e9

    .line 106
    check-cast v7, Lck;

    invoke-static {v8, v7}, Lcn;->a(ILck;)I

    move-result v7

    goto/16 :goto_371

    .line 107
    :cond_e9
    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v7}, Lcn;->a(ILjava/lang/String;)I

    move-result v7

    goto/16 :goto_371

    .line 108
    :pswitch_f1
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_465

    .line 109
    invoke-static {v8}, Lcn;->j(I)I

    move-result v7

    goto/16 :goto_371

    .line 110
    :pswitch_fd
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_465

    .line 111
    invoke-static {v8}, Lcn;->l(I)I

    move-result v7

    goto/16 :goto_371

    .line 112
    :pswitch_109
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_465

    .line 113
    invoke-static {v8}, Lcn;->m(I)I

    move-result v7

    goto/16 :goto_371

    .line 114
    :pswitch_115
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_465

    .line 115
    invoke-static {p1, v11, v12}, Lek;->d(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->b(II)I

    move-result v7

    goto/16 :goto_371

    .line 116
    :pswitch_125
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_465

    .line 117
    invoke-static {p1, v11, v12}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcn;->c(IJ)I

    move-result v7

    goto/16 :goto_371

    .line 118
    :pswitch_135
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_465

    .line 119
    invoke-static {p1, v11, v12}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcn;->b(IJ)I

    move-result v7

    goto/16 :goto_371

    .line 120
    :pswitch_145
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_465

    .line 121
    invoke-static {v8}, Lcn;->n(I)I

    move-result v7

    goto/16 :goto_371

    .line 122
    :pswitch_151
    invoke-direct {p0, p1, v8, v3}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_465

    .line 123
    invoke-static {v8}, Lcn;->k(I)I

    move-result v7

    goto/16 :goto_371

    .line 124
    :pswitch_15d
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v3}, Lek;->b(I)Ljava/lang/Object;

    move-result-object v8

    .line 125
    invoke-static {v7, v8}, Lff;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    goto/16 :goto_465

    .line 126
    :pswitch_16a
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 127
    invoke-direct {p0, v3}, Lek;->a(I)Les;

    move-result-object v9

    .line 128
    invoke-static {v8, v7, v9}, Leu;->b(ILjava/util/List;Les;)I

    move-result v7

    goto/16 :goto_371

    .line 129
    :pswitch_17a
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 130
    invoke-static {v7}, Leu;->c(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_465

    .line 131
    invoke-static {v8}, Lcn;->a(I)I

    move-result v8

    .line 132
    invoke-static {v7}, Lcn;->c(I)I

    move-result v9

    goto/16 :goto_2a7

    .line 133
    :pswitch_190
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 134
    invoke-static {v7}, Leu;->g(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_465

    .line 135
    invoke-static {v8}, Lcn;->a(I)I

    move-result v8

    .line 136
    invoke-static {v7}, Lcn;->c(I)I

    move-result v9

    goto/16 :goto_2a7

    .line 137
    :pswitch_1a6
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 138
    invoke-static {v7}, Leu;->i(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_465

    .line 139
    invoke-static {v8}, Lcn;->a(I)I

    move-result v8

    .line 140
    invoke-static {v7}, Lcn;->c(I)I

    move-result v9

    goto/16 :goto_2a7

    .line 141
    :pswitch_1bc
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 142
    invoke-static {v7}, Leu;->h(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_465

    .line 143
    invoke-static {v8}, Lcn;->a(I)I

    move-result v8

    .line 144
    invoke-static {v7}, Lcn;->c(I)I

    move-result v9

    goto/16 :goto_2a7

    .line 145
    :pswitch_1d2
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 146
    invoke-static {v7}, Leu;->d(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_465

    .line 147
    invoke-static {v8}, Lcn;->a(I)I

    move-result v8

    .line 148
    invoke-static {v7}, Lcn;->c(I)I

    move-result v9

    goto/16 :goto_2a7

    .line 149
    :pswitch_1e8
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 150
    invoke-static {v7}, Leu;->f(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_465

    .line 151
    invoke-static {v8}, Lcn;->a(I)I

    move-result v8

    .line 152
    invoke-static {v7}, Lcn;->c(I)I

    move-result v9

    goto/16 :goto_2a7

    .line 153
    :pswitch_1fe
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 154
    invoke-static {v7}, Leu;->j(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_465

    .line 155
    invoke-static {v8}, Lcn;->a(I)I

    move-result v8

    .line 156
    invoke-static {v7}, Lcn;->c(I)I

    move-result v9

    goto/16 :goto_2a7

    .line 157
    :pswitch_214
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 158
    invoke-static {v7}, Leu;->h(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_465

    .line 159
    invoke-static {v8}, Lcn;->a(I)I

    move-result v8

    .line 160
    invoke-static {v7}, Lcn;->c(I)I

    move-result v9

    goto/16 :goto_2a7

    .line 161
    :pswitch_22a
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 162
    invoke-static {v7}, Leu;->i(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_465

    .line 163
    invoke-static {v8}, Lcn;->a(I)I

    move-result v8

    .line 164
    invoke-static {v7}, Lcn;->c(I)I

    move-result v9

    goto :goto_2a7

    .line 165
    :pswitch_23f
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 166
    invoke-static {v7}, Leu;->e(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_465

    .line 167
    invoke-static {v8}, Lcn;->a(I)I

    move-result v8

    .line 168
    invoke-static {v7}, Lcn;->c(I)I

    move-result v9

    goto :goto_2a7

    .line 169
    :pswitch_254
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 170
    invoke-static {v7}, Leu;->b(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_465

    .line 171
    invoke-static {v8}, Lcn;->a(I)I

    move-result v8

    .line 172
    invoke-static {v7}, Lcn;->c(I)I

    move-result v9

    goto :goto_2a7

    .line 173
    :pswitch_269
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 174
    invoke-static {v7}, Leu;->a(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_465

    .line 175
    invoke-static {v8}, Lcn;->a(I)I

    move-result v8

    .line 176
    invoke-static {v7}, Lcn;->c(I)I

    move-result v9

    goto :goto_2a7

    .line 177
    :pswitch_27e
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 178
    invoke-static {v7}, Leu;->h(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_465

    .line 179
    invoke-static {v8}, Lcn;->a(I)I

    move-result v8

    .line 180
    invoke-static {v7}, Lcn;->c(I)I

    move-result v9

    goto :goto_2a7

    .line 181
    :pswitch_293
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 182
    invoke-static {v7}, Leu;->i(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_465

    .line 183
    invoke-static {v8}, Lcn;->a(I)I

    move-result v8

    .line 184
    invoke-static {v7}, Lcn;->c(I)I

    move-result v9

    :goto_2a7
    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_465

    .line 185
    :pswitch_2ac
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 186
    invoke-static {v8, v7}, Leu;->j(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_371

    .line 187
    :pswitch_2b8
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 188
    invoke-static {v8, v7}, Leu;->i(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_371

    .line 189
    :pswitch_2c4
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 190
    invoke-static {v8, v7}, Leu;->f(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_371

    .line 191
    :pswitch_2d0
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 192
    invoke-static {v8, v7}, Leu;->e(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_371

    .line 193
    :pswitch_2dc
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 194
    invoke-static {v8, v7}, Leu;->d(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_371

    .line 195
    :pswitch_2e8
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 196
    invoke-static {v8, v7}, Leu;->k(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_371

    .line 197
    :pswitch_2f4
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 198
    invoke-static {v8, v7}, Leu;->b(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_371

    .line 199
    :pswitch_300
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v3}, Lek;->a(I)Les;

    move-result-object v9

    .line 200
    invoke-static {v8, v7, v9}, Leu;->a(ILjava/util/List;Les;)I

    move-result v7

    goto :goto_371

    .line 201
    :pswitch_30f
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Leu;->a(ILjava/util/List;)I

    move-result v7

    goto :goto_371

    .line 202
    :pswitch_31a
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 203
    invoke-static {v8, v7}, Leu;->c(ILjava/util/List;)I

    move-result v7

    goto :goto_371

    .line 204
    :pswitch_325
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 205
    invoke-static {v8, v7}, Leu;->e(ILjava/util/List;)I

    move-result v7

    goto :goto_371

    .line 206
    :pswitch_330
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 207
    invoke-static {v8, v7}, Leu;->f(ILjava/util/List;)I

    move-result v7

    goto :goto_371

    .line 208
    :pswitch_33b
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 209
    invoke-static {v8, v7}, Leu;->g(ILjava/util/List;)I

    move-result v7

    goto :goto_371

    .line 210
    :pswitch_346
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 211
    invoke-static {v8, v7}, Leu;->l(ILjava/util/List;)I

    move-result v7

    goto :goto_371

    .line 212
    :pswitch_351
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 213
    invoke-static {v8, v7}, Leu;->h(ILjava/util/List;)I

    move-result v7

    goto :goto_371

    .line 214
    :pswitch_35c
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 215
    invoke-static {v8, v7}, Leu;->e(ILjava/util/List;)I

    move-result v7

    goto :goto_371

    .line 216
    :pswitch_367
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 217
    invoke-static {v8, v7}, Leu;->f(ILjava/util/List;)I

    move-result v7

    :goto_371
    add-int/2addr v4, v7

    goto/16 :goto_465

    :pswitch_374
    and-int v7, v5, v10

    if-eqz v7, :cond_465

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

    goto :goto_371

    :pswitch_387
    and-int v7, v5, v10

    if-eqz v7, :cond_465

    .line 221
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcn;->d(IJ)I

    move-result v7

    goto :goto_371

    :pswitch_394
    and-int v7, v5, v10

    if-eqz v7, :cond_465

    .line 222
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->d(II)I

    move-result v7

    goto :goto_371

    :pswitch_3a1
    and-int v7, v5, v10

    if-eqz v7, :cond_465

    .line 223
    invoke-static {v8}, Lcn;->p(I)I

    move-result v7

    goto :goto_371

    :pswitch_3aa
    and-int v7, v5, v10

    if-eqz v7, :cond_465

    .line 224
    invoke-static {v8}, Lcn;->o(I)I

    move-result v7

    goto :goto_371

    :pswitch_3b3
    and-int v7, v5, v10

    if-eqz v7, :cond_465

    .line 225
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->e(II)I

    move-result v7

    goto :goto_371

    :pswitch_3c0
    and-int v7, v5, v10

    if-eqz v7, :cond_465

    .line 226
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->c(II)I

    move-result v7

    goto :goto_371

    :pswitch_3cd
    and-int v7, v5, v10

    if-eqz v7, :cond_465

    .line 227
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lck;

    .line 228
    invoke-static {v8, v7}, Lcn;->a(ILck;)I

    move-result v7

    goto :goto_371

    :pswitch_3dc
    and-int v7, v5, v10

    if-eqz v7, :cond_465

    .line 229
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 230
    invoke-direct {p0, v3}, Lek;->a(I)Les;

    move-result-object v9

    invoke-static {v8, v7, v9}, Leu;->a(ILjava/lang/Object;Les;)I

    move-result v7

    goto :goto_371

    :pswitch_3ed
    and-int v7, v5, v10

    if-eqz v7, :cond_465

    .line 231
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 232
    instance-of v9, v7, Lck;

    if-eqz v9, :cond_401

    .line 233
    check-cast v7, Lck;

    invoke-static {v8, v7}, Lcn;->a(ILck;)I

    move-result v7

    goto/16 :goto_371

    .line 234
    :cond_401
    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v7}, Lcn;->a(ILjava/lang/String;)I

    move-result v7

    goto/16 :goto_371

    :pswitch_409
    and-int v7, v5, v10

    if-eqz v7, :cond_465

    .line 235
    invoke-static {v8}, Lcn;->j(I)I

    move-result v7

    goto/16 :goto_371

    :pswitch_413
    and-int v7, v5, v10

    if-eqz v7, :cond_465

    .line 236
    invoke-static {v8}, Lcn;->l(I)I

    move-result v7

    goto/16 :goto_371

    :pswitch_41d
    and-int v7, v5, v10

    if-eqz v7, :cond_465

    .line 237
    invoke-static {v8}, Lcn;->m(I)I

    move-result v7

    goto/16 :goto_371

    :pswitch_427
    and-int v7, v5, v10

    if-eqz v7, :cond_465

    .line 238
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Lcn;->b(II)I

    move-result v7

    goto/16 :goto_371

    :pswitch_435
    and-int v7, v5, v10

    if-eqz v7, :cond_465

    .line 239
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcn;->c(IJ)I

    move-result v7

    goto/16 :goto_371

    :pswitch_443
    and-int v7, v5, v10

    if-eqz v7, :cond_465

    .line 240
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcn;->b(IJ)I

    move-result v7

    goto/16 :goto_371

    :pswitch_451
    and-int v7, v5, v10

    if-eqz v7, :cond_465

    .line 241
    invoke-static {v8}, Lcn;->n(I)I

    move-result v7

    goto/16 :goto_371

    :pswitch_45b
    and-int v7, v5, v10

    if-eqz v7, :cond_465

    .line 242
    invoke-static {v8}, Lcn;->k(I)I

    move-result v7

    goto/16 :goto_371

    :cond_465
    :goto_465
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_a

    .line 241
    :cond_469
    iget-object v0, p0, Lek;->o:Lfh;

    .line 243
    invoke-static {v0, p1}, Lek;->a(Lfh;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v4, v0

    iget-boolean p0, p0, Lek;->h:Z

    if-eqz p0, :cond_4c0

    .line 244
    invoke-static {p1}, Lej;->b(Ljava/lang/Object;)Lcu;

    move-result-object p0

    move p1, v2

    :goto_479
    iget-object v0, p0, Lcu;->a:Lfc;

    .line 245
    invoke-virtual {v0}, Lfc;->a()I

    move-result v0

    if-ge v2, v0, :cond_499

    iget-object v0, p0, Lcu;->a:Lfc;

    .line 246
    invoke-virtual {v0, v2}, Lfc;->b(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 247
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldd;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcu;->b(Ldd;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr p1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_479

    :cond_499
    iget-object p0, p0, Lcu;->a:Lfc;

    .line 248
    invoke-virtual {p0}, Lfc;->b()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4a3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4bf

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 249
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldd;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcu;->b(Ldd;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_4a3

    :cond_4bf
    add-int/2addr v4, p1

    :cond_4c0
    return v4

    nop

    :pswitch_data_4c2
    .packed-switch 0x0
        :pswitch_45b
        :pswitch_451
        :pswitch_443
        :pswitch_435
        :pswitch_427
        :pswitch_41d
        :pswitch_413
        :pswitch_409
        :pswitch_3ed
        :pswitch_3dc
        :pswitch_3cd
        :pswitch_3c0
        :pswitch_3b3
        :pswitch_3aa
        :pswitch_3a1
        :pswitch_394
        :pswitch_387
        :pswitch_374
        :pswitch_367
        :pswitch_35c
        :pswitch_351
        :pswitch_346
        :pswitch_33b
        :pswitch_330
        :pswitch_325
        :pswitch_31a
        :pswitch_30f
        :pswitch_300
        :pswitch_2f4
        :pswitch_2e8
        :pswitch_2dc
        :pswitch_2d0
        :pswitch_2c4
        :pswitch_2b8
        :pswitch_2ac
        :pswitch_293
        :pswitch_27e
        :pswitch_269
        :pswitch_254
        :pswitch_23f
        :pswitch_22a
        :pswitch_214
        :pswitch_1fe
        :pswitch_1e8
        :pswitch_1d2
        :pswitch_1bc
        :pswitch_1a6
        :pswitch_190
        :pswitch_17a
        :pswitch_16a
        :pswitch_15d
        :pswitch_151
        :pswitch_145
        :pswitch_135
        :pswitch_125
        :pswitch_115
        :pswitch_109
        :pswitch_fd
        :pswitch_f1
        :pswitch_d3
        :pswitch_bf
        :pswitch_ad
        :pswitch_9d
        :pswitch_8d
        :pswitch_81
        :pswitch_75
        :pswitch_65
        :pswitch_55
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

    if-ge v1, v3, :cond_459

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
    packed-switch v4, :pswitch_data_462

    goto/16 :goto_455

    .line 256
    :pswitch_30
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_455

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

    goto/16 :goto_33c

    .line 260
    :pswitch_46
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 261
    invoke-static {p1, v6, v7}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcn;->d(IJ)I

    move-result v3

    goto/16 :goto_33c

    .line 262
    :pswitch_56
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 263
    invoke-static {p1, v6, v7}, Lek;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->d(II)I

    move-result v3

    goto/16 :goto_33c

    .line 264
    :pswitch_66
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 265
    invoke-static {v5}, Lcn;->p(I)I

    move-result v3

    goto/16 :goto_33c

    .line 266
    :pswitch_72
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 267
    invoke-static {v5}, Lcn;->o(I)I

    move-result v3

    goto/16 :goto_33c

    .line 268
    :pswitch_7e
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 269
    invoke-static {p1, v6, v7}, Lek;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->e(II)I

    move-result v3

    goto/16 :goto_33c

    .line 270
    :pswitch_8e
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 271
    invoke-static {p1, v6, v7}, Lek;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->c(II)I

    move-result v3

    goto/16 :goto_33c

    .line 272
    :pswitch_9e
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 273
    invoke-static {p1, v6, v7}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lck;

    .line 274
    invoke-static {v5, v3}, Lcn;->a(ILck;)I

    move-result v3

    goto/16 :goto_33c

    .line 275
    :pswitch_b0
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 276
    invoke-static {p1, v6, v7}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 277
    invoke-direct {p0, v1}, Lek;->a(I)Les;

    move-result-object v4

    invoke-static {v5, v3, v4}, Leu;->a(ILjava/lang/Object;Les;)I

    move-result v3

    goto/16 :goto_33c

    .line 278
    :pswitch_c4
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 279
    invoke-static {p1, v6, v7}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 280
    instance-of v4, v3, Lck;

    if-eqz v4, :cond_da

    .line 281
    check-cast v3, Lck;

    invoke-static {v5, v3}, Lcn;->a(ILck;)I

    move-result v3

    goto/16 :goto_33c

    .line 282
    :cond_da
    check-cast v3, Ljava/lang/String;

    invoke-static {v5, v3}, Lcn;->a(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_33c

    .line 283
    :pswitch_e2
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 284
    invoke-static {v5}, Lcn;->j(I)I

    move-result v3

    goto/16 :goto_33c

    .line 285
    :pswitch_ee
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 286
    invoke-static {v5}, Lcn;->l(I)I

    move-result v3

    goto/16 :goto_33c

    .line 287
    :pswitch_fa
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 288
    invoke-static {v5}, Lcn;->m(I)I

    move-result v3

    goto/16 :goto_33c

    .line 289
    :pswitch_106
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 290
    invoke-static {p1, v6, v7}, Lek;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->b(II)I

    move-result v3

    goto/16 :goto_33c

    .line 291
    :pswitch_116
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 292
    invoke-static {p1, v6, v7}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcn;->c(IJ)I

    move-result v3

    goto/16 :goto_33c

    .line 293
    :pswitch_126
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 294
    invoke-static {p1, v6, v7}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcn;->b(IJ)I

    move-result v3

    goto/16 :goto_33c

    .line 295
    :pswitch_136
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 296
    invoke-static {v5}, Lcn;->n(I)I

    move-result v3

    goto/16 :goto_33c

    .line 297
    :pswitch_142
    invoke-direct {p0, p1, v5, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 298
    invoke-static {v5}, Lcn;->k(I)I

    move-result v3

    goto/16 :goto_33c

    .line 299
    :pswitch_14e
    invoke-static {p1, v6, v7}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1}, Lek;->b(I)Ljava/lang/Object;

    move-result-object v4

    .line 300
    invoke-static {v3, v4}, Lff;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    goto/16 :goto_455

    .line 301
    :pswitch_15b
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1}, Lek;->a(I)Les;

    move-result-object v4

    .line 302
    invoke-static {v5, v3, v4}, Leu;->b(ILjava/util/List;Les;)I

    move-result v3

    goto/16 :goto_33c

    .line 303
    :pswitch_169
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 304
    invoke-static {v3}, Leu;->c(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_455

    .line 305
    invoke-static {v5}, Lcn;->a(I)I

    move-result v4

    .line 306
    invoke-static {v3}, Lcn;->c(I)I

    move-result v5

    goto/16 :goto_296

    .line 307
    :pswitch_17f
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 308
    invoke-static {v3}, Leu;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_455

    .line 309
    invoke-static {v5}, Lcn;->a(I)I

    move-result v4

    .line 310
    invoke-static {v3}, Lcn;->c(I)I

    move-result v5

    goto/16 :goto_296

    .line 311
    :pswitch_195
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 312
    invoke-static {v3}, Leu;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_455

    .line 313
    invoke-static {v5}, Lcn;->a(I)I

    move-result v4

    .line 314
    invoke-static {v3}, Lcn;->c(I)I

    move-result v5

    goto/16 :goto_296

    .line 315
    :pswitch_1ab
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 316
    invoke-static {v3}, Leu;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_455

    .line 317
    invoke-static {v5}, Lcn;->a(I)I

    move-result v4

    .line 318
    invoke-static {v3}, Lcn;->c(I)I

    move-result v5

    goto/16 :goto_296

    .line 319
    :pswitch_1c1
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 320
    invoke-static {v3}, Leu;->d(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_455

    .line 321
    invoke-static {v5}, Lcn;->a(I)I

    move-result v4

    .line 322
    invoke-static {v3}, Lcn;->c(I)I

    move-result v5

    goto/16 :goto_296

    .line 323
    :pswitch_1d7
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 324
    invoke-static {v3}, Leu;->f(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_455

    .line 325
    invoke-static {v5}, Lcn;->a(I)I

    move-result v4

    .line 326
    invoke-static {v3}, Lcn;->c(I)I

    move-result v5

    goto/16 :goto_296

    .line 327
    :pswitch_1ed
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 328
    invoke-static {v3}, Leu;->j(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_455

    .line 329
    invoke-static {v5}, Lcn;->a(I)I

    move-result v4

    .line 330
    invoke-static {v3}, Lcn;->c(I)I

    move-result v5

    goto/16 :goto_296

    .line 331
    :pswitch_203
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 332
    invoke-static {v3}, Leu;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_455

    .line 333
    invoke-static {v5}, Lcn;->a(I)I

    move-result v4

    .line 334
    invoke-static {v3}, Lcn;->c(I)I

    move-result v5

    goto/16 :goto_296

    .line 335
    :pswitch_219
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 336
    invoke-static {v3}, Leu;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_455

    .line 337
    invoke-static {v5}, Lcn;->a(I)I

    move-result v4

    .line 338
    invoke-static {v3}, Lcn;->c(I)I

    move-result v5

    goto :goto_296

    .line 339
    :pswitch_22e
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 340
    invoke-static {v3}, Leu;->e(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_455

    .line 341
    invoke-static {v5}, Lcn;->a(I)I

    move-result v4

    .line 342
    invoke-static {v3}, Lcn;->c(I)I

    move-result v5

    goto :goto_296

    .line 343
    :pswitch_243
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 344
    invoke-static {v3}, Leu;->b(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_455

    .line 345
    invoke-static {v5}, Lcn;->a(I)I

    move-result v4

    .line 346
    invoke-static {v3}, Lcn;->c(I)I

    move-result v5

    goto :goto_296

    .line 347
    :pswitch_258
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 348
    invoke-static {v3}, Leu;->a(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_455

    .line 349
    invoke-static {v5}, Lcn;->a(I)I

    move-result v4

    .line 350
    invoke-static {v3}, Lcn;->c(I)I

    move-result v5

    goto :goto_296

    .line 351
    :pswitch_26d
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 352
    invoke-static {v3}, Leu;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_455

    .line 353
    invoke-static {v5}, Lcn;->a(I)I

    move-result v4

    .line 354
    invoke-static {v3}, Lcn;->c(I)I

    move-result v5

    goto :goto_296

    .line 355
    :pswitch_282
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 356
    invoke-static {v3}, Leu;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_455

    .line 357
    invoke-static {v5}, Lcn;->a(I)I

    move-result v4

    .line 358
    invoke-static {v3}, Lcn;->c(I)I

    move-result v5

    :goto_296
    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_455

    .line 359
    :pswitch_29b
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->j(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_33c

    .line 360
    :pswitch_2a5
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 361
    invoke-static {v5, v3}, Leu;->i(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_33c

    .line 362
    :pswitch_2af
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->f(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_33c

    .line 363
    :pswitch_2b9
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->e(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_33c

    .line 364
    :pswitch_2c3
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 365
    invoke-static {v5, v3}, Leu;->d(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_33c

    .line 366
    :pswitch_2cd
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 367
    invoke-static {v5, v3}, Leu;->k(ILjava/util/List;)I

    move-result v3

    goto :goto_33c

    .line 368
    :pswitch_2d6
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 369
    invoke-static {v5, v3}, Leu;->b(ILjava/util/List;)I

    move-result v3

    goto :goto_33c

    .line 370
    :pswitch_2df
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1}, Lek;->a(I)Les;

    move-result-object v4

    .line 371
    invoke-static {v5, v3, v4}, Leu;->a(ILjava/util/List;Les;)I

    move-result v3

    goto :goto_33c

    .line 372
    :pswitch_2ec
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->a(ILjava/util/List;)I

    move-result v3

    goto :goto_33c

    .line 373
    :pswitch_2f5
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->c(ILjava/util/List;)I

    move-result v3

    goto :goto_33c

    .line 374
    :pswitch_2fe
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->e(ILjava/util/List;)I

    move-result v3

    goto :goto_33c

    .line 375
    :pswitch_307
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->f(ILjava/util/List;)I

    move-result v3

    goto :goto_33c

    .line 376
    :pswitch_310
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 377
    invoke-static {v5, v3}, Leu;->g(ILjava/util/List;)I

    move-result v3

    goto :goto_33c

    .line 378
    :pswitch_319
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->l(ILjava/util/List;)I

    move-result v3

    goto :goto_33c

    .line 379
    :pswitch_322
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->h(ILjava/util/List;)I

    move-result v3

    goto :goto_33c

    .line 380
    :pswitch_32b
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->e(ILjava/util/List;)I

    move-result v3

    goto :goto_33c

    .line 381
    :pswitch_334
    invoke-static {p1, v6, v7}, Lek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Leu;->f(ILjava/util/List;)I

    move-result v3

    :goto_33c
    add-int/2addr v2, v3

    goto/16 :goto_455

    .line 382
    :pswitch_33f
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_455

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

    goto :goto_33c

    .line 386
    :pswitch_354
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 387
    invoke-static {p1, v6, v7}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcn;->d(IJ)I

    move-result v3

    goto :goto_33c

    .line 388
    :pswitch_363
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 389
    invoke-static {p1, v6, v7}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->d(II)I

    move-result v3

    goto :goto_33c

    .line 390
    :pswitch_372
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 391
    invoke-static {v5}, Lcn;->p(I)I

    move-result v3

    goto :goto_33c

    .line 392
    :pswitch_37d
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 393
    invoke-static {v5}, Lcn;->o(I)I

    move-result v3

    goto :goto_33c

    .line 394
    :pswitch_388
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 395
    invoke-static {p1, v6, v7}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->e(II)I

    move-result v3

    goto :goto_33c

    .line 396
    :pswitch_397
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 397
    invoke-static {p1, v6, v7}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->c(II)I

    move-result v3

    goto :goto_33c

    .line 398
    :pswitch_3a6
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 399
    invoke-static {p1, v6, v7}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lck;

    .line 400
    invoke-static {v5, v3}, Lcn;->a(ILck;)I

    move-result v3

    goto :goto_33c

    .line 401
    :pswitch_3b7
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 402
    invoke-static {p1, v6, v7}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 403
    invoke-direct {p0, v1}, Lek;->a(I)Les;

    move-result-object v4

    invoke-static {v5, v3, v4}, Leu;->a(ILjava/lang/Object;Les;)I

    move-result v3

    goto/16 :goto_33c

    .line 404
    :pswitch_3cb
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 405
    invoke-static {p1, v6, v7}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 406
    instance-of v4, v3, Lck;

    if-eqz v4, :cond_3e1

    .line 407
    check-cast v3, Lck;

    invoke-static {v5, v3}, Lcn;->a(ILck;)I

    move-result v3

    goto/16 :goto_33c

    .line 408
    :cond_3e1
    check-cast v3, Ljava/lang/String;

    invoke-static {v5, v3}, Lcn;->a(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_33c

    .line 409
    :pswitch_3e9
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 410
    invoke-static {v5}, Lcn;->j(I)I

    move-result v3

    goto/16 :goto_33c

    .line 411
    :pswitch_3f5
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 412
    invoke-static {v5}, Lcn;->l(I)I

    move-result v3

    goto/16 :goto_33c

    .line 413
    :pswitch_401
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 414
    invoke-static {v5}, Lcn;->m(I)I

    move-result v3

    goto/16 :goto_33c

    .line 415
    :pswitch_40d
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 416
    invoke-static {p1, v6, v7}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Lcn;->b(II)I

    move-result v3

    goto/16 :goto_33c

    .line 417
    :pswitch_41d
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 418
    invoke-static {p1, v6, v7}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcn;->c(IJ)I

    move-result v3

    goto/16 :goto_33c

    .line 419
    :pswitch_42d
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 420
    invoke-static {p1, v6, v7}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcn;->b(IJ)I

    move-result v3

    goto/16 :goto_33c

    .line 421
    :pswitch_43d
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 422
    invoke-static {v5}, Lcn;->n(I)I

    move-result v3

    goto/16 :goto_33c

    .line 423
    :pswitch_449
    invoke-direct {p0, p1, v1}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_455

    .line 424
    invoke-static {v5}, Lcn;->k(I)I

    move-result v3

    goto/16 :goto_33c

    :cond_455
    :goto_455
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_4

    .line 422
    :cond_459
    iget-object p0, p0, Lek;->o:Lfh;

    .line 425
    invoke-static {p0, p1}, Lek;->a(Lfh;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v2, p0

    return v2

    nop

    :pswitch_data_462
    .packed-switch 0x0
        :pswitch_449
        :pswitch_43d
        :pswitch_42d
        :pswitch_41d
        :pswitch_40d
        :pswitch_401
        :pswitch_3f5
        :pswitch_3e9
        :pswitch_3cb
        :pswitch_3b7
        :pswitch_3a6
        :pswitch_397
        :pswitch_388
        :pswitch_37d
        :pswitch_372
        :pswitch_363
        :pswitch_354
        :pswitch_33f
        :pswitch_334
        :pswitch_32b
        :pswitch_322
        :pswitch_319
        :pswitch_310
        :pswitch_307
        :pswitch_2fe
        :pswitch_2f5
        :pswitch_2ec
        :pswitch_2df
        :pswitch_2d6
        :pswitch_2cd
        :pswitch_2c3
        :pswitch_2b9
        :pswitch_2af
        :pswitch_2a5
        :pswitch_29b
        :pswitch_282
        :pswitch_26d
        :pswitch_258
        :pswitch_243
        :pswitch_22e
        :pswitch_219
        :pswitch_203
        :pswitch_1ed
        :pswitch_1d7
        :pswitch_1c1
        :pswitch_1ab
        :pswitch_195
        :pswitch_17f
        :pswitch_169
        :pswitch_15b
        :pswitch_14e
        :pswitch_142
        :pswitch_136
        :pswitch_126
        :pswitch_116
        :pswitch_106
        :pswitch_fa
        :pswitch_ee
        :pswitch_e2
        :pswitch_c4
        :pswitch_b0
        :pswitch_9e
        :pswitch_8e
        :pswitch_7e
        :pswitch_72
        :pswitch_66
        :pswitch_56
        :pswitch_46
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

    move-result p0

    return p0

    :cond_e
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .registers 10

    iget-object v0, p0, Lek;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v1, v0, :cond_22a

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

    packed-switch v3, :pswitch_data_248

    goto/16 :goto_226

    .line 432
    :pswitch_1e
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 433
    invoke-static {p1, v5, v6}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 434
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_225

    .line 435
    :pswitch_30
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 436
    invoke-static {p1, v5, v6}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->a(J)I

    move-result v3

    goto/16 :goto_225

    .line 437
    :pswitch_42
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 438
    invoke-static {p1, v5, v6}, Lek;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_225

    .line 439
    :pswitch_50
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 440
    invoke-static {p1, v5, v6}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->a(J)I

    move-result v3

    goto/16 :goto_225

    .line 441
    :pswitch_62
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 442
    invoke-static {p1, v5, v6}, Lek;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_225

    .line 443
    :pswitch_70
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 444
    invoke-static {p1, v5, v6}, Lek;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_225

    .line 445
    :pswitch_7e
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 446
    invoke-static {p1, v5, v6}, Lek;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_225

    .line 447
    :pswitch_8c
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 448
    invoke-static {p1, v5, v6}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_225

    .line 449
    :pswitch_9e
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 450
    invoke-static {p1, v5, v6}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 451
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_225

    .line 452
    :pswitch_b0
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 453
    invoke-static {p1, v5, v6}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_225

    .line 454
    :pswitch_c4
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 455
    invoke-static {p1, v5, v6}, Lek;->f(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Ldj;->a(Z)I

    move-result v3

    goto/16 :goto_225

    .line 456
    :pswitch_d6
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 457
    invoke-static {p1, v5, v6}, Lek;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_225

    .line 458
    :pswitch_e4
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 459
    invoke-static {p1, v5, v6}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->a(J)I

    move-result v3

    goto/16 :goto_225

    .line 460
    :pswitch_f6
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 461
    invoke-static {p1, v5, v6}, Lek;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_225

    .line 462
    :pswitch_104
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 463
    invoke-static {p1, v5, v6}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->a(J)I

    move-result v3

    goto/16 :goto_225

    .line 464
    :pswitch_116
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 465
    invoke-static {p1, v5, v6}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->a(J)I

    move-result v3

    goto/16 :goto_225

    .line 466
    :pswitch_128
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 467
    invoke-static {p1, v5, v6}, Lek;->c(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_225

    .line 468
    :pswitch_13a
    invoke-direct {p0, p1, v4, v1}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 469
    invoke-static {p1, v5, v6}, Lek;->b(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->a(J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_150
    mul-int/lit8 v2, v2, 0x35

    .line 470
    invoke-static {p1, v5, v6}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_225

    :pswitch_15c
    mul-int/lit8 v2, v2, 0x35

    .line 471
    invoke-static {p1, v5, v6}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_225

    .line 472
    :pswitch_168
    invoke-static {p1, v5, v6}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1c1

    .line 473
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1c1

    :pswitch_173
    mul-int/lit8 v2, v2, 0x35

    .line 474
    invoke-static {p1, v5, v6}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->a(J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_17f
    mul-int/lit8 v2, v2, 0x35

    .line 475
    invoke-static {p1, v5, v6}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_187
    mul-int/lit8 v2, v2, 0x35

    .line 476
    invoke-static {p1, v5, v6}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->a(J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_193
    mul-int/lit8 v2, v2, 0x35

    .line 477
    invoke-static {p1, v5, v6}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_19b
    mul-int/lit8 v2, v2, 0x35

    .line 478
    invoke-static {p1, v5, v6}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_1a3
    mul-int/lit8 v2, v2, 0x35

    .line 479
    invoke-static {p1, v5, v6}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_1ab
    mul-int/lit8 v2, v2, 0x35

    .line 480
    invoke-static {p1, v5, v6}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_225

    .line 481
    :pswitch_1b7
    invoke-static {p1, v5, v6}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1c1

    .line 482
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_1c1
    :goto_1c1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_226

    :pswitch_1c5
    mul-int/lit8 v2, v2, 0x35

    .line 483
    invoke-static {p1, v5, v6}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_225

    :pswitch_1d2
    mul-int/lit8 v2, v2, 0x35

    .line 484
    invoke-static {p1, v5, v6}, Lfr;->c(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Ldj;->a(Z)I

    move-result v3

    goto :goto_225

    :pswitch_1dd
    mul-int/lit8 v2, v2, 0x35

    .line 485
    invoke-static {p1, v5, v6}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_225

    :pswitch_1e4
    mul-int/lit8 v2, v2, 0x35

    .line 486
    invoke-static {p1, v5, v6}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->a(J)I

    move-result v3

    goto :goto_225

    :pswitch_1ef
    mul-int/lit8 v2, v2, 0x35

    .line 487
    invoke-static {p1, v5, v6}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_225

    :pswitch_1f6
    mul-int/lit8 v2, v2, 0x35

    .line 488
    invoke-static {p1, v5, v6}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->a(J)I

    move-result v3

    goto :goto_225

    :pswitch_201
    mul-int/lit8 v2, v2, 0x35

    .line 489
    invoke-static {p1, v5, v6}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldj;->a(J)I

    move-result v3

    goto :goto_225

    :pswitch_20c
    mul-int/lit8 v2, v2, 0x35

    .line 490
    invoke-static {p1, v5, v6}, Lfr;->d(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_225

    :pswitch_217
    mul-int/lit8 v2, v2, 0x35

    .line 491
    invoke-static {p1, v5, v6}, Lfr;->e(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 492
    invoke-static {v3, v4}, Ldj;->a(J)I

    move-result v3

    :goto_225
    add-int/2addr v2, v3

    :cond_226
    :goto_226
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_5

    :cond_22a
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lek;->o:Lfh;

    .line 493
    invoke-virtual {v0, p1}, Lfh;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean p0, p0, Lek;->h:Z

    if-eqz p0, :cond_246

    mul-int/lit8 v2, v2, 0x35

    .line 494
    invoke-static {p1}, Lej;->b(Ljava/lang/Object;)Lcu;

    move-result-object p0

    invoke-virtual {p0}, Lcu;->hashCode()I

    move-result p0

    add-int/2addr v2, p0

    :cond_246
    return v2

    nop

    :pswitch_data_248
    .packed-switch 0x0
        :pswitch_217
        :pswitch_20c
        :pswitch_201
        :pswitch_1f6
        :pswitch_1ef
        :pswitch_1e4
        :pswitch_1dd
        :pswitch_1d2
        :pswitch_1c5
        :pswitch_1b7
        :pswitch_1ab
        :pswitch_1a3
        :pswitch_19b
        :pswitch_193
        :pswitch_187
        :pswitch_17f
        :pswitch_173
        :pswitch_168
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_150
        :pswitch_13a
        :pswitch_128
        :pswitch_116
        :pswitch_104
        :pswitch_f6
        :pswitch_e4
        :pswitch_d6
        :pswitch_c4
        :pswitch_b0
        :pswitch_9e
        :pswitch_8c
        :pswitch_7e
        :pswitch_70
        :pswitch_62
        :pswitch_50
        :pswitch_42
        :pswitch_30
        :pswitch_1e
    .end packed-switch
.end method

.method final a(Ljava/lang/Object;[BIIILby;)I
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v15, p1

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
    if-ge v1, v14, :cond_40b

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

    if-le v1, v3, :cond_39

    div-int/2addr v4, v9

    .line 805
    invoke-direct {v0, v1, v4}, Lek;->a(II)I

    move-result v3

    goto :goto_3d

    .line 806
    :cond_39
    invoke-direct {v0, v1}, Lek;->i(I)I

    move-result v3

    :goto_3d
    const/4 v4, -0x1

    if-eq v3, v4, :cond_38a

    .line 805
    iget-object v4, v0, Lek;->c:[I

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

    if-gt v9, v1, :cond_272

    iget-object v1, v0, Lek;->c:[I

    add-int/lit8 v23, v3, 0x2

    .line 810
    aget v1, v1, v23

    ushr-int/lit8 v23, v1, 0x14

    const/4 v2, 0x1

    shl-int v23, v2, v23

    const v12, 0xfffff

    and-int/2addr v1, v12

    if-ne v1, v7, :cond_6f

    move/from16 v17, v3

    move/from16 v26, v7

    :goto_6d
    move v7, v6

    goto :goto_82

    :cond_6f
    if-ne v7, v12, :cond_74

    move/from16 v17, v3

    goto :goto_7a

    :cond_74
    move/from16 v17, v3

    int-to-long v2, v7

    .line 811
    invoke-virtual {v11, v15, v2, v3, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_7a
    int-to-long v2, v1

    .line 812
    invoke-virtual {v11, v15, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move/from16 v26, v1

    goto :goto_6d

    :goto_82
    const/4 v1, 0x5

    packed-switch v9, :pswitch_data_4ca

    move v12, v5

    move/from16 v9, v17

    move/from16 v3, v19

    move-wide/from16 v5, v21

    const/4 v1, 0x3

    const/16 v17, -0x1

    if-ne v8, v1, :cond_266

    .line 845
    invoke-direct {v0, v9}, Lek;->a(I)Les;

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

    if-nez v2, :cond_252

    iget-object v2, v10, Lby;->c:Ljava/lang/Object;

    .line 847
    invoke-virtual {v11, v15, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_25f

    :pswitch_b1
    if-nez v8, :cond_d3

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

    goto/16 :goto_218

    :cond_d3
    move v12, v5

    move/from16 v9, v17

    const/16 v17, -0x1

    move/from16 v3, v19

    goto/16 :goto_266

    :pswitch_dc
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v3, v21

    const/16 v17, -0x1

    if-nez v8, :cond_1e4

    .line 816
    invoke-static {v13, v2, v10}, Leb;->a([BILby;)I

    move-result v1

    iget v2, v10, Lby;->a:I

    .line 817
    invoke-static {v2}, Lcl;->a(I)I

    move-result v2

    .line 818
    invoke-virtual {v11, v15, v3, v4, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_246

    :pswitch_f6
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v3, v21

    const/16 v17, -0x1

    if-nez v8, :cond_1e4

    .line 819
    invoke-static {v13, v2, v10}, Leb;->a([BILby;)I

    move-result v1

    iget v2, v10, Lby;->a:I

    .line 820
    invoke-direct {v0, v9}, Lek;->c(I)Ldh;

    move-result-object v5

    if-eqz v5, :cond_123

    .line 821
    invoke-interface {v5, v2}, Ldh;->a(I)Z

    move-result v5

    if-eqz v5, :cond_114

    goto :goto_123

    .line 823
    :cond_114
    invoke-static/range {p1 .. p1}, Lek;->c(Ljava/lang/Object;)Lfi;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v12, v2}, Lfi;->a(ILjava/lang/Object;)V

    move v6, v7

    goto/16 :goto_248

    .line 822
    :cond_123
    :goto_123
    invoke-virtual {v11, v15, v3, v4, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_246

    :pswitch_128
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v3, v21

    const/4 v1, 0x2

    const/16 v17, -0x1

    if-ne v8, v1, :cond_1e4

    .line 824
    invoke-static {v13, v2, v10}, Leb;->e([BILby;)I

    move-result v1

    iget-object v2, v10, Lby;->c:Ljava/lang/Object;

    .line 825
    invoke-virtual {v11, v15, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_246

    :pswitch_13f
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v3, v21

    const/4 v1, 0x2

    const/16 v17, -0x1

    if-ne v8, v1, :cond_1e4

    .line 826
    invoke-direct {v0, v9}, Lek;->a(I)Les;

    move-result-object v1

    .line 827
    invoke-static {v1, v13, v2, v14, v10}, Leb;->a(Les;[BIILby;)I

    move-result v1

    and-int v2, v7, v23

    if-nez v2, :cond_15e

    iget-object v2, v10, Lby;->c:Ljava/lang/Object;

    .line 828
    invoke-virtual {v11, v15, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_246

    .line 829
    :cond_15e
    invoke-virtual {v11, v15, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    iget-object v5, v10, Lby;->c:Ljava/lang/Object;

    .line 830
    invoke-static {v2, v5}, Ldj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 831
    invoke-virtual {v11, v15, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_246

    :pswitch_16d
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v5, v21

    const/4 v1, 0x2

    const/16 v17, -0x1

    if-eq v8, v1, :cond_17b

    goto/16 :goto_1e4

    :cond_17b
    const/high16 v1, 0x20000000

    and-int/2addr v1, v4

    if-eqz v1, :cond_185

    .line 833
    invoke-static {v13, v2, v10}, Leb;->d([BILby;)I

    move-result v1

    goto :goto_189

    .line 832
    :cond_185
    invoke-static {v13, v2, v10}, Leb;->c([BILby;)I

    move-result v1

    .line 833
    :goto_189
    iget-object v2, v10, Lby;->c:Ljava/lang/Object;

    .line 834
    invoke-virtual {v11, v15, v5, v6, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_246

    :pswitch_190
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    if-nez v8, :cond_1e4

    .line 835
    invoke-static {v13, v2, v10}, Leb;->b([BILby;)I

    move-result v1

    iget-wide v2, v10, Lby;->b:J

    const-wide/16 v18, 0x0

    cmp-long v2, v2, v18

    if-eqz v2, :cond_1a9

    const/4 v2, 0x1

    goto :goto_1ab

    :cond_1a9
    move/from16 v2, v16

    .line 836
    :goto_1ab
    invoke-static {v15, v5, v6, v2}, Lfr;->a(Ljava/lang/Object;JZ)V

    goto/16 :goto_246

    :pswitch_1b0
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    if-ne v8, v1, :cond_1e4

    .line 837
    invoke-static {v13, v2}, Leb;->a([BI)I

    move-result v1

    invoke-virtual {v11, v15, v5, v6, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v2, 0x4

    goto/16 :goto_246

    :pswitch_1c6
    move v12, v5

    move/from16 v9, v17

    move/from16 v2, v19

    move-wide/from16 v5, v21

    const/4 v1, 0x1

    const/16 v17, -0x1

    if-ne v8, v1, :cond_1e4

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

    goto/16 :goto_246

    :cond_1e4
    :goto_1e4
    move v3, v2

    goto/16 :goto_266

    :pswitch_1e7
    move v12, v5

    move/from16 v9, v17

    move/from16 v3, v19

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    if-nez v8, :cond_266

    .line 839
    invoke-static {v13, v3, v10}, Leb;->a([BILby;)I

    move-result v1

    iget v2, v10, Lby;->a:I

    .line 840
    invoke-virtual {v11, v15, v5, v6, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_246

    :pswitch_1fc
    move v12, v5

    move/from16 v9, v17

    move/from16 v3, v19

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    if-nez v8, :cond_266

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

    :goto_218
    or-int v6, v7, v23

    move v1, v8

    goto :goto_248

    :pswitch_21c
    move v12, v5

    move/from16 v9, v17

    move/from16 v3, v19

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    if-ne v8, v1, :cond_266

    .line 843
    invoke-static {v13, v3}, Leb;->d([BI)F

    move-result v1

    invoke-static {v15, v5, v6, v1}, Lfr;->a(Ljava/lang/Object;JF)V

    add-int/lit8 v1, v3, 0x4

    goto :goto_246

    :pswitch_231
    move v12, v5

    move/from16 v9, v17

    move/from16 v3, v19

    move-wide/from16 v5, v21

    const/4 v1, 0x1

    const/16 v17, -0x1

    if-ne v8, v1, :cond_266

    .line 844
    invoke-static {v13, v3}, Leb;->c([BI)D

    move-result-wide v1

    invoke-static {v15, v5, v6, v1, v2}, Lfr;->a(Ljava/lang/Object;JD)V

    add-int/lit8 v1, v3, 0x8

    :goto_246
    or-int v6, v7, v23

    :goto_248
    move v4, v9

    move v2, v12

    move/from16 v3, v20

    move/from16 v7, v26

    move/from16 v12, p5

    goto/16 :goto_1a

    .line 848
    :cond_252
    invoke-virtual {v11, v15, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v10, Lby;->c:Ljava/lang/Object;

    .line 849
    invoke-static {v2, v3}, Ldj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 850
    invoke-virtual {v11, v15, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_25f
    or-int v6, v7, v23

    move-object/from16 v13, p2

    move/from16 v14, p4

    goto :goto_248

    :cond_266
    :goto_266
    move-object v8, v0

    move/from16 v22, v7

    move v10, v9

    move-object v9, v11

    move-object v0, v15

    move/from16 v21, v20

    move/from16 v11, p5

    goto/16 :goto_39c

    :cond_272
    move v12, v5

    move v2, v9

    move/from16 v5, v20

    move-wide/from16 v13, v21

    const/16 v17, -0x1

    move v9, v3

    move/from16 v3, v19

    const/16 v1, 0x1b

    if-eq v2, v1, :cond_323

    const/16 v1, 0x31

    if-gt v2, v1, :cond_2d9

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

    move/from16 v18, v12

    move/from16 v12, v19

    move-object/from16 v23, v0

    move-object v0, v15

    move-object/from16 v15, p6

    .line 858
    invoke-direct/range {v1 .. v15}, Lek;->a(Ljava/lang/Object;[BIIIIIIJIJLby;)I

    move-result v1

    move/from16 v15, v20

    if-eq v1, v15, :cond_2cc

    :goto_2b3
    move-object/from16 v13, p2

    move/from16 v4, p3

    move/from16 v14, p4

    move/from16 v12, p5

    move-object/from16 v10, p6

    move-object v15, v0

    move/from16 v2, v18

    move/from16 v3, v21

    move/from16 v6, v22

    move-object/from16 v11, v23

    move/from16 v7, v26

    move-object/from16 v0, p0

    goto/16 :goto_1a

    :cond_2cc
    move-object/from16 v8, p0

    move/from16 v10, p3

    move/from16 v11, p5

    move v3, v1

    move/from16 v12, v18

    move-object/from16 v9, v23

    goto/16 :goto_39c

    :cond_2d9
    move/from16 v19, v2

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v26, v7

    move/from16 p3, v9

    move-object/from16 v23, v11

    move/from16 v18, v12

    move-object v0, v15

    move v15, v3

    const/16 v1, 0x32

    move/from16 v10, v19

    if-eq v10, v1, :cond_309

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v9, v4

    move v4, v15

    move/from16 v5, p4

    move/from16 v6, v18

    move/from16 v7, v21

    move-wide v11, v13

    move/from16 v13, p3

    move-object/from16 v14, p6

    .line 859
    invoke-direct/range {v1 .. v14}, Lek;->a(Ljava/lang/Object;[BIIIIIIIJILby;)I

    move-result v1

    if-eq v1, v15, :cond_2cc

    goto :goto_2b3

    :cond_309
    const/4 v1, 0x2

    if-eq v8, v1, :cond_30e

    goto/16 :goto_37e

    :cond_30e
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

    if-eq v1, v15, :cond_2cc

    goto :goto_2b3

    :cond_323
    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v26, v7

    move/from16 p3, v9

    move-object/from16 v23, v11

    move/from16 v18, v12

    move-object v0, v15

    const/4 v1, 0x2

    move v15, v3

    if-ne v8, v1, :cond_37e

    move-object/from16 v1, v23

    .line 851
    invoke-virtual {v1, v0, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldi;

    .line 852
    invoke-interface {v2}, Ldi;->a()Z

    move-result v3

    if-nez v3, :cond_353

    .line 853
    invoke-interface {v2}, Ldi;->size()I

    move-result v3

    if-eqz v3, :cond_34a

    add-int/2addr v3, v3

    goto :goto_34c

    :cond_34a
    const/16 v3, 0xa

    .line 854
    :goto_34c
    invoke-interface {v2, v3}, Ldi;->a(I)Ldi;

    move-result-object v2

    .line 855
    invoke-virtual {v1, v0, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_353
    move-object/from16 v8, p0

    move/from16 v10, p3

    move-object v9, v1

    move-object v6, v2

    .line 856
    invoke-direct {v8, v10}, Lek;->a(I)Les;

    move-result-object v1

    move/from16 v2, v18

    move-object/from16 v3, p2

    move v4, v15

    move/from16 v5, p4

    move-object/from16 v7, p6

    .line 857
    invoke-static/range {v1 .. v7}, Leb;->a(Les;I[BIILdi;Lby;)I

    move-result v1

    move-object/from16 v13, p2

    move/from16 v14, p4

    move/from16 v12, p5

    move-object v15, v0

    move-object v0, v8

    move-object v11, v9

    move v4, v10

    move/from16 v3, v21

    move/from16 v6, v22

    move/from16 v7, v26

    move-object/from16 v10, p6

    goto/16 :goto_1a

    :cond_37e
    :goto_37e
    move-object/from16 v8, p0

    move/from16 v10, p3

    move-object/from16 v9, v23

    move/from16 v11, p5

    move v3, v15

    move/from16 v12, v18

    goto :goto_39c

    :cond_38a
    move-object v8, v0

    move/from16 v21, v1

    move/from16 v17, v4

    move/from16 v22, v6

    move/from16 v26, v7

    move-object v9, v11

    move-object v0, v15

    move v15, v2

    move/from16 v11, p5

    move v12, v5

    move v3, v15

    move/from16 v10, v16

    :goto_39c
    if-eq v12, v11, :cond_39f

    goto :goto_3a9

    :cond_39f
    if-eqz v11, :cond_3a9

    move v1, v3

    move v2, v12

    move/from16 v6, v22

    move/from16 v7, v26

    goto/16 :goto_413

    .line 850
    :cond_3a9
    :goto_3a9
    iget-boolean v1, v8, Lek;->h:Z

    if-nez v1, :cond_3b2

    move-object/from16 v13, p6

    :cond_3af
    move/from16 v14, v21

    goto :goto_3ea

    :cond_3b2
    move-object/from16 v13, p6

    .line 863
    iget-object v1, v13, Lby;->d:Lcs;

    .line 861
    invoke-static {}, Lcs;->a()Lcs;

    move-result-object v2

    if-eq v1, v2, :cond_3af

    iget-object v1, v8, Lek;->g:Leh;

    iget-object v2, v13, Lby;->d:Lcs;

    move/from16 v14, v21

    .line 864
    invoke-virtual {v2, v1, v14}, Lcs;->a(Leh;I)Lcq;

    move-result-object v6

    if-nez v6, :cond_3d8

    .line 865
    invoke-static/range {p1 .. p1}, Lek;->c(Ljava/lang/Object;)Lfi;

    move-result-object v5

    move v1, v12

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    .line 866
    invoke-static/range {v1 .. v6}, Leb;->a(I[BIILfi;Lby;)I

    move-result v1

    goto :goto_3f9

    .line 867
    :cond_3d8
    move-object v5, v0

    check-cast v5, Ldc;

    invoke-virtual {v5}, Ldc;->d()Lcu;

    move v1, v12

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v7, p6

    .line 868
    invoke-static/range {v1 .. v7}, Leb;->a(I[BIILdc;Lcq;Lby;)I

    move-result v1

    goto :goto_3f9

    .line 862
    :goto_3ea
    invoke-static/range {p1 .. p1}, Lek;->c(Ljava/lang/Object;)Lfi;

    move-result-object v5

    move v1, v12

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    .line 863
    invoke-static/range {v1 .. v6}, Leb;->a(I[BIILfi;Lby;)I

    move-result v1

    :goto_3f9
    move-object v15, v0

    move-object v0, v8

    move v4, v10

    move v2, v12

    move-object v10, v13

    move v3, v14

    move/from16 v6, v22

    move/from16 v7, v26

    move-object/from16 v13, p2

    move/from16 v14, p4

    move v12, v11

    move-object v11, v9

    goto/16 :goto_1a

    :cond_40b
    move-object v8, v0

    move/from16 v22, v6

    move/from16 v26, v7

    move-object v9, v11

    move v11, v12

    move-object v0, v15

    :goto_413
    const v3, 0xfffff

    if-ne v7, v3, :cond_419

    goto :goto_41d

    :cond_419
    int-to-long v3, v7

    .line 869
    invoke-virtual {v9, v0, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 868
    :goto_41d
    iget v3, v8, Lek;->l:I

    const/4 v4, 0x0

    :goto_420
    iget v5, v8, Lek;->m:I

    if-ge v3, v5, :cond_4ab

    iget-object v5, v8, Lek;->k:[I

    .line 870
    aget v5, v5, v3

    .line 871
    invoke-direct {v8, v5}, Lek;->d(I)I

    move-result v6

    .line 872
    invoke-direct {v8, v5}, Lek;->e(I)I

    move-result v7

    invoke-static {v7}, Lek;->h(I)J

    move-result-wide v9

    .line 873
    invoke-static {v0, v9, v10}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_43b

    goto :goto_4a7

    .line 874
    :cond_43b
    invoke-direct {v8, v5}, Lek;->c(I)Ldh;

    move-result-object v9

    if-eqz v9, :cond_4a7

    .line 875
    invoke-static {v7}, Lff;->c(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    .line 876
    invoke-direct {v8, v5}, Lek;->b(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lff;->b(Ljava/lang/Object;)Lea;

    move-result-object v5

    .line 877
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_455
    :goto_455
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4a7

    .line 878
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 879
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v9, v12}, Ldh;->a(I)Z

    move-result v12

    if-nez v12, :cond_455

    if-eqz v4, :cond_474

    goto :goto_478

    .line 880
    :cond_474
    invoke-static {}, Lfh;->a()Ljava/lang/Object;

    move-result-object v4

    .line 881
    :goto_478
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v5, v12, v13}, Leb;->a(Lea;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    .line 882
    invoke-static {v12}, Lck;->d(I)Lcg;

    move-result-object v12

    iget-object v13, v12, Lcg;->a:Lcn;

    .line 883
    :try_start_48a
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v13, v5, v14, v10}, Leb;->a(Lcn;Lea;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_495
    .catch Ljava/io/IOException; {:try_start_48a .. :try_end_495} :catch_4a0

    .line 884
    invoke-virtual {v12}, Lcg;->a()Lck;

    move-result-object v10

    invoke-static {v4, v6, v10}, Lfh;->a(Ljava/lang/Object;ILck;)V

    .line 885
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_455

    :catch_4a0
    move-exception v0

    .line 806
    new-instance v1, Ljava/lang/RuntimeException;

    .line 886
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_4a7
    :goto_4a7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_420

    :cond_4ab
    if-eqz v4, :cond_4b2

    .line 880
    iget-object v3, v8, Lek;->o:Lfh;

    .line 887
    invoke-virtual {v3, v0, v4}, Lfh;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4b2
    if-eqz v11, :cond_4c0

    move/from16 v0, p4

    if-gt v1, v0, :cond_4bb

    if-ne v2, v11, :cond_4bb

    goto :goto_4c4

    .line 889
    :cond_4bb
    invoke-static {}, Ldl;->e()Ldl;

    move-result-object v0

    throw v0

    :cond_4c0
    move/from16 v0, p4

    if-ne v1, v0, :cond_4c5

    :goto_4c4
    return v1

    .line 888
    :cond_4c5
    invoke-static {}, Ldl;->e()Ldl;

    move-result-object v0

    throw v0

    :pswitch_data_4ca
    .packed-switch 0x0
        :pswitch_231
        :pswitch_21c
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1e7
        :pswitch_1c6
        :pswitch_1b0
        :pswitch_190
        :pswitch_16d
        :pswitch_13f
        :pswitch_128
        :pswitch_1e7
        :pswitch_f6
        :pswitch_1b0
        :pswitch_1c6
        :pswitch_dc
        :pswitch_b1
    .end packed-switch
.end method

.method public final a()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lek;->g:Leh;

    .line 650
    invoke-static {p0}, Lfs;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/Object;Lgb;)V
    .registers 15

    iget-boolean v0, p0, Lek;->i:Z

    if-eqz v0, :cond_59f

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

    move v5, v4

    :goto_25
    if-ge v5, v3, :cond_585

    .line 1227
    invoke-direct {p0, v5}, Lek;->e(I)I

    move-result v6

    .line 1228
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    :goto_2f
    if-nez v2, :cond_32

    goto :goto_4a

    .line 1229
    :cond_32
    invoke-static {v2}, Lej;->a(Ljava/util/Map$Entry;)I

    move-result v8

    if-gt v8, v7, :cond_4a

    .line 1230
    invoke-static {p2, v2}, Lej;->a(Lgb;Ljava/util/Map$Entry;)V

    .line 1231
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_2f

    :cond_48
    move-object v2, v1

    goto :goto_2f

    .line 1232
    :cond_4a
    :goto_4a
    invoke-static {v6}, Lek;->g(I)I

    move-result v8

    const/4 v9, 0x1

    packed-switch v8, :pswitch_data_5a4

    goto/16 :goto_581

    .line 1233
    :pswitch_54
    invoke-direct {p0, p1, v7, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1234
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 1235
    invoke-direct {p0, v5}, Lek;->a(I)Les;

    move-result-object v8

    .line 1236
    invoke-interface {p2, v7, v6, v8}, Lgb;->b(ILjava/lang/Object;Les;)V

    goto/16 :goto_581

    .line 1237
    :pswitch_6b
    invoke-direct {p0, p1, v7, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1238
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lgb;->e(IJ)V

    goto/16 :goto_581

    .line 1239
    :pswitch_7e
    invoke-direct {p0, p1, v7, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1240
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->d(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->f(II)V

    goto/16 :goto_581

    .line 1241
    :pswitch_91
    invoke-direct {p0, p1, v7, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1242
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lgb;->b(IJ)V

    goto/16 :goto_581

    .line 1243
    :pswitch_a4
    invoke-direct {p0, p1, v7, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1244
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->d(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->a(II)V

    goto/16 :goto_581

    .line 1245
    :pswitch_b7
    invoke-direct {p0, p1, v7, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1246
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->d(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->b(II)V

    goto/16 :goto_581

    .line 1247
    :pswitch_ca
    invoke-direct {p0, p1, v7, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1248
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->d(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->e(II)V

    goto/16 :goto_581

    .line 1249
    :pswitch_dd
    invoke-direct {p0, p1, v7, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1250
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lck;

    .line 1251
    invoke-interface {p2, v7, v6}, Lgb;->a(ILck;)V

    goto/16 :goto_581

    .line 1252
    :pswitch_f2
    invoke-direct {p0, p1, v7, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1253
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 1254
    invoke-direct {p0, v5}, Lek;->a(I)Les;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lgb;->a(ILjava/lang/Object;Les;)V

    goto/16 :goto_581

    .line 1255
    :pswitch_109
    invoke-direct {p0, p1, v7, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1256
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6, p2}, Lek;->a(ILjava/lang/Object;Lgb;)V

    goto/16 :goto_581

    .line 1257
    :pswitch_11c
    invoke-direct {p0, p1, v7, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1258
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->f(Ljava/lang/Object;J)Z

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->a(IZ)V

    goto/16 :goto_581

    .line 1259
    :pswitch_12f
    invoke-direct {p0, p1, v7, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1260
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->d(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->d(II)V

    goto/16 :goto_581

    .line 1261
    :pswitch_142
    invoke-direct {p0, p1, v7, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1262
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lgb;->d(IJ)V

    goto/16 :goto_581

    .line 1263
    :pswitch_155
    invoke-direct {p0, p1, v7, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1264
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->d(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->c(II)V

    goto/16 :goto_581

    .line 1265
    :pswitch_168
    invoke-direct {p0, p1, v7, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1266
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lgb;->c(IJ)V

    goto/16 :goto_581

    .line 1267
    :pswitch_17b
    invoke-direct {p0, p1, v7, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1268
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lgb;->a(IJ)V

    goto/16 :goto_581

    .line 1269
    :pswitch_18e
    invoke-direct {p0, p1, v7, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1270
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->c(Ljava/lang/Object;J)F

    move-result v6

    invoke-interface {p2, v7, v6}, Lgb;->a(IF)V

    goto/16 :goto_581

    .line 1271
    :pswitch_1a1
    invoke-direct {p0, p1, v7, v5}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1272
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lek;->b(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lgb;->a(ID)V

    goto/16 :goto_581

    .line 1273
    :pswitch_1b4
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, p2, v7, v6, v5}, Lek;->a(Lgb;ILjava/lang/Object;I)V

    goto/16 :goto_581

    .line 1274
    :pswitch_1c1
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1275
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1276
    invoke-direct {p0, v5}, Lek;->a(I)Les;

    move-result-object v8

    .line 1277
    invoke-static {v7, v6, p2, v8}, Leu;->b(ILjava/util/List;Lgb;Les;)V

    goto/16 :goto_581

    .line 1278
    :pswitch_1d8
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1279
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1280
    invoke-static {v7, v6, p2, v9}, Leu;->e(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_581

    .line 1281
    :pswitch_1eb
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1282
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1283
    invoke-static {v7, v6, p2, v9}, Leu;->j(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_581

    .line 1284
    :pswitch_1fe
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1285
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1286
    invoke-static {v7, v6, p2, v9}, Leu;->g(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_581

    .line 1287
    :pswitch_211
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1288
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1289
    invoke-static {v7, v6, p2, v9}, Leu;->l(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_581

    .line 1290
    :pswitch_224
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1291
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1292
    invoke-static {v7, v6, p2, v9}, Leu;->m(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_581

    .line 1293
    :pswitch_237
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1294
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1295
    invoke-static {v7, v6, p2, v9}, Leu;->i(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_581

    .line 1296
    :pswitch_24a
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1297
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1298
    invoke-static {v7, v6, p2, v9}, Leu;->n(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_581

    .line 1299
    :pswitch_25d
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1300
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1301
    invoke-static {v7, v6, p2, v9}, Leu;->k(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_581

    .line 1302
    :pswitch_270
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1303
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1304
    invoke-static {v7, v6, p2, v9}, Leu;->f(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_581

    .line 1305
    :pswitch_283
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1306
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1307
    invoke-static {v7, v6, p2, v9}, Leu;->h(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_581

    .line 1308
    :pswitch_296
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1309
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1310
    invoke-static {v7, v6, p2, v9}, Leu;->d(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_581

    .line 1311
    :pswitch_2a9
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1312
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1313
    invoke-static {v7, v6, p2, v9}, Leu;->c(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_581

    .line 1314
    :pswitch_2bc
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1315
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1316
    invoke-static {v7, v6, p2, v9}, Leu;->b(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_581

    .line 1317
    :pswitch_2cf
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1318
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1319
    invoke-static {v7, v6, p2, v9}, Leu;->a(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_581

    .line 1320
    :pswitch_2e2
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1321
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1322
    invoke-static {v7, v6, p2, v4}, Leu;->e(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_581

    .line 1323
    :pswitch_2f5
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1324
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1325
    invoke-static {v7, v6, p2, v4}, Leu;->j(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_581

    .line 1326
    :pswitch_308
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1327
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1328
    invoke-static {v7, v6, p2, v4}, Leu;->g(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_581

    .line 1329
    :pswitch_31b
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1330
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1331
    invoke-static {v7, v6, p2, v4}, Leu;->l(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_581

    .line 1332
    :pswitch_32e
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1333
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1334
    invoke-static {v7, v6, p2, v4}, Leu;->m(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_581

    .line 1335
    :pswitch_341
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1336
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1337
    invoke-static {v7, v6, p2, v4}, Leu;->i(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_581

    .line 1338
    :pswitch_354
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1339
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1340
    invoke-static {v7, v6, p2}, Leu;->b(ILjava/util/List;Lgb;)V

    goto/16 :goto_581

    .line 1341
    :pswitch_367
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1342
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1343
    invoke-direct {p0, v5}, Lek;->a(I)Les;

    move-result-object v8

    .line 1344
    invoke-static {v7, v6, p2, v8}, Leu;->a(ILjava/util/List;Lgb;Les;)V

    goto/16 :goto_581

    .line 1345
    :pswitch_37e
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1346
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1347
    invoke-static {v7, v6, p2}, Leu;->a(ILjava/util/List;Lgb;)V

    goto/16 :goto_581

    .line 1348
    :pswitch_391
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1349
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1350
    invoke-static {v7, v6, p2, v4}, Leu;->n(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_581

    .line 1351
    :pswitch_3a4
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1352
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1353
    invoke-static {v7, v6, p2, v4}, Leu;->k(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_581

    .line 1354
    :pswitch_3b7
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1355
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1356
    invoke-static {v7, v6, p2, v4}, Leu;->f(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_581

    .line 1357
    :pswitch_3ca
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1358
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1359
    invoke-static {v7, v6, p2, v4}, Leu;->h(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_581

    .line 1360
    :pswitch_3dd
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1361
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1362
    invoke-static {v7, v6, p2, v4}, Leu;->d(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_581

    .line 1363
    :pswitch_3f0
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1364
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1365
    invoke-static {v7, v6, p2, v4}, Leu;->c(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_581

    .line 1366
    :pswitch_403
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1367
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1368
    invoke-static {v7, v6, p2, v4}, Leu;->b(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_581

    .line 1369
    :pswitch_416
    invoke-direct {p0, v5}, Lek;->d(I)I

    move-result v7

    .line 1370
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1371
    invoke-static {v7, v6, p2, v4}, Leu;->a(ILjava/util/List;Lgb;Z)V

    goto/16 :goto_581

    .line 1372
    :pswitch_429
    invoke-direct {p0, p1, v5}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1373
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 1374
    invoke-direct {p0, v5}, Lek;->a(I)Les;

    move-result-object v8

    .line 1375
    invoke-interface {p2, v7, v6, v8}, Lgb;->b(ILjava/lang/Object;Les;)V

    goto/16 :goto_581

    .line 1376
    :pswitch_440
    invoke-direct {p0, p1, v5}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1377
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    .line 1378
    invoke-static {p1, v8, v9}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 1377
    invoke-interface {p2, v7, v8, v9}, Lgb;->e(IJ)V

    goto/16 :goto_581

    .line 1379
    :pswitch_453
    invoke-direct {p0, p1, v5}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1380
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    .line 1381
    invoke-static {p1, v8, v9}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v6

    .line 1380
    invoke-interface {p2, v7, v6}, Lgb;->f(II)V

    goto/16 :goto_581

    .line 1382
    :pswitch_466
    invoke-direct {p0, p1, v5}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1383
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    .line 1384
    invoke-static {p1, v8, v9}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 1383
    invoke-interface {p2, v7, v8, v9}, Lgb;->b(IJ)V

    goto/16 :goto_581

    .line 1385
    :pswitch_479
    invoke-direct {p0, p1, v5}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1386
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    .line 1387
    invoke-static {p1, v8, v9}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v6

    .line 1386
    invoke-interface {p2, v7, v6}, Lgb;->a(II)V

    goto/16 :goto_581

    .line 1388
    :pswitch_48c
    invoke-direct {p0, p1, v5}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1389
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    .line 1390
    invoke-static {p1, v8, v9}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v6

    .line 1389
    invoke-interface {p2, v7, v6}, Lgb;->b(II)V

    goto/16 :goto_581

    .line 1391
    :pswitch_49f
    invoke-direct {p0, p1, v5}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1392
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    .line 1393
    invoke-static {p1, v8, v9}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v6

    .line 1392
    invoke-interface {p2, v7, v6}, Lgb;->e(II)V

    goto/16 :goto_581

    .line 1394
    :pswitch_4b2
    invoke-direct {p0, p1, v5}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1395
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lck;

    .line 1396
    invoke-interface {p2, v7, v6}, Lgb;->a(ILck;)V

    goto/16 :goto_581

    .line 1397
    :pswitch_4c7
    invoke-direct {p0, p1, v5}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1398
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 1399
    invoke-direct {p0, v5}, Lek;->a(I)Les;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lgb;->a(ILjava/lang/Object;Les;)V

    goto/16 :goto_581

    .line 1400
    :pswitch_4de
    invoke-direct {p0, p1, v5}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1401
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6, p2}, Lek;->a(ILjava/lang/Object;Lgb;)V

    goto/16 :goto_581

    .line 1402
    :pswitch_4f1
    invoke-direct {p0, p1, v5}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1403
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    .line 1404
    invoke-static {p1, v8, v9}, Lfr;->c(Ljava/lang/Object;J)Z

    move-result v6

    .line 1403
    invoke-interface {p2, v7, v6}, Lgb;->a(IZ)V

    goto/16 :goto_581

    .line 1405
    :pswitch_504
    invoke-direct {p0, p1, v5}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1406
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    .line 1407
    invoke-static {p1, v8, v9}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v6

    .line 1406
    invoke-interface {p2, v7, v6}, Lgb;->d(II)V

    goto :goto_581

    .line 1408
    :pswitch_516
    invoke-direct {p0, p1, v5}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1409
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    .line 1410
    invoke-static {p1, v8, v9}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 1409
    invoke-interface {p2, v7, v8, v9}, Lgb;->d(IJ)V

    goto :goto_581

    .line 1411
    :pswitch_528
    invoke-direct {p0, p1, v5}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1412
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    .line 1413
    invoke-static {p1, v8, v9}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v6

    .line 1412
    invoke-interface {p2, v7, v6}, Lgb;->c(II)V

    goto :goto_581

    .line 1414
    :pswitch_53a
    invoke-direct {p0, p1, v5}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1415
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    .line 1416
    invoke-static {p1, v8, v9}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 1415
    invoke-interface {p2, v7, v8, v9}, Lgb;->c(IJ)V

    goto :goto_581

    .line 1417
    :pswitch_54c
    invoke-direct {p0, p1, v5}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1418
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    .line 1419
    invoke-static {p1, v8, v9}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 1418
    invoke-interface {p2, v7, v8, v9}, Lgb;->a(IJ)V

    goto :goto_581

    .line 1420
    :pswitch_55e
    invoke-direct {p0, p1, v5}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1421
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    .line 1422
    invoke-static {p1, v8, v9}, Lfr;->d(Ljava/lang/Object;J)F

    move-result v6

    .line 1421
    invoke-interface {p2, v7, v6}, Lgb;->a(IF)V

    goto :goto_581

    .line 1423
    :pswitch_570
    invoke-direct {p0, p1, v5}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_581

    .line 1424
    invoke-static {v6}, Lek;->h(I)J

    move-result-wide v8

    .line 1425
    invoke-static {p1, v8, v9}, Lfr;->e(Ljava/lang/Object;J)D

    move-result-wide v8

    .line 1424
    invoke-interface {p2, v7, v8, v9}, Lgb;->a(ID)V

    :cond_581
    :goto_581
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_25

    :cond_585
    :goto_585
    if-eqz v2, :cond_599

    .line 1426
    invoke-static {p2, v2}, Lej;->a(Lgb;Ljava/util/Map$Entry;)V

    .line 1427
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_597

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_585

    :cond_597
    move-object v2, v1

    goto :goto_585

    :cond_599
    iget-object p0, p0, Lek;->o:Lfh;

    .line 1428
    invoke-static {p0, p1, p2}, Lek;->a(Lfh;Ljava/lang/Object;Lgb;)V

    return-void

    .line 1429
    :cond_59f
    invoke-direct {p0, p1, p2}, Lek;->b(Ljava/lang/Object;Lgb;)V

    return-void

    nop

    :pswitch_data_5a4
    .packed-switch 0x0
        :pswitch_570
        :pswitch_55e
        :pswitch_54c
        :pswitch_53a
        :pswitch_528
        :pswitch_516
        :pswitch_504
        :pswitch_4f1
        :pswitch_4de
        :pswitch_4c7
        :pswitch_4b2
        :pswitch_49f
        :pswitch_48c
        :pswitch_479
        :pswitch_466
        :pswitch_453
        :pswitch_440
        :pswitch_429
        :pswitch_416
        :pswitch_403
        :pswitch_3f0
        :pswitch_3dd
        :pswitch_3ca
        :pswitch_3b7
        :pswitch_3a4
        :pswitch_391
        :pswitch_37e
        :pswitch_367
        :pswitch_354
        :pswitch_341
        :pswitch_32e
        :pswitch_31b
        :pswitch_308
        :pswitch_2f5
        :pswitch_2e2
        :pswitch_2cf
        :pswitch_2bc
        :pswitch_2a9
        :pswitch_296
        :pswitch_283
        :pswitch_270
        :pswitch_25d
        :pswitch_24a
        :pswitch_237
        :pswitch_224
        :pswitch_211
        :pswitch_1fe
        :pswitch_1eb
        :pswitch_1d8
        :pswitch_1c1
        :pswitch_1b4
        :pswitch_1a1
        :pswitch_18e
        :pswitch_17b
        :pswitch_168
        :pswitch_155
        :pswitch_142
        :pswitch_12f
        :pswitch_11c
        :pswitch_109
        :pswitch_f2
        :pswitch_dd
        :pswitch_ca
        :pswitch_b7
        :pswitch_a4
        :pswitch_91
        :pswitch_7e
        :pswitch_6b
        :pswitch_54
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

    iget-boolean p0, p0, Lek;->h:Z

    if-eqz p0, :cond_1eb

    .line 63
    invoke-static {p1}, Lej;->b(Ljava/lang/Object;)Lcu;

    move-result-object p0

    .line 64
    invoke-static {p2}, Lej;->b(Ljava/lang/Object;)Lcu;

    move-result-object p1

    .line 65
    invoke-virtual {p0, p1}, Lcu;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1eb
    const/4 p0, 0x1

    return p0

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

    move-result p0

    goto :goto_d

    :cond_9
    invoke-direct {p0, p1}, Lek;->g(Ljava/lang/Object;)I

    move-result p0

    :goto_d
    return p0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    .line 626
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 0
    :goto_4
    iget-object v1, p0, Lek;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_180

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

    packed-switch v1, :pswitch_data_190

    goto/16 :goto_17c

    .line 564
    :pswitch_1e
    invoke-direct {p0, p1, p2, v0}, Lek;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17c

    .line 565
    :pswitch_23
    invoke-direct {p0, p2, v4, v0}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 566
    invoke-static {p2, v2, v3}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 567
    invoke-direct {p0, p1, v4, v0}, Lek;->b(Ljava/lang/Object;II)V

    goto/16 :goto_17c

    .line 568
    :pswitch_35
    invoke-direct {p0, p1, p2, v0}, Lek;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17c

    .line 569
    :pswitch_3a
    invoke-direct {p0, p2, v4, v0}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 570
    invoke-static {p2, v2, v3}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 571
    invoke-direct {p0, p1, v4, v0}, Lek;->b(Ljava/lang/Object;II)V

    goto/16 :goto_17c

    :pswitch_4c
    iget-object v1, p0, Lek;->r:Lff;

    .line 572
    invoke-static {v1, p1, p2, v2, v3}, Leu;->a(Lff;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_17c

    :pswitch_53
    iget-object v1, p0, Lek;->n:Ldv;

    .line 573
    invoke-virtual {v1, p1, p2, v2, v3}, Ldv;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_17c

    .line 574
    :pswitch_5a
    invoke-direct {p0, p1, p2, v0}, Lek;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17c

    .line 575
    :pswitch_5f
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 576
    invoke-static {p2, v2, v3}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lfr;->a(Ljava/lang/Object;JJ)V

    .line 577
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_17c

    .line 578
    :pswitch_71
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 579
    invoke-static {p2, v2, v3}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->a(Ljava/lang/Object;JI)V

    .line 580
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_17c

    .line 581
    :pswitch_83
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 582
    invoke-static {p2, v2, v3}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lfr;->a(Ljava/lang/Object;JJ)V

    .line 583
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_17c

    .line 584
    :pswitch_95
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 585
    invoke-static {p2, v2, v3}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->a(Ljava/lang/Object;JI)V

    .line 586
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_17c

    .line 587
    :pswitch_a7
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 588
    invoke-static {p2, v2, v3}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->a(Ljava/lang/Object;JI)V

    .line 589
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_17c

    .line 590
    :pswitch_b9
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 591
    invoke-static {p2, v2, v3}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->a(Ljava/lang/Object;JI)V

    .line 592
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_17c

    .line 593
    :pswitch_cb
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 594
    invoke-static {p2, v2, v3}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 595
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_17c

    .line 596
    :pswitch_dd
    invoke-direct {p0, p1, p2, v0}, Lek;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17c

    .line 597
    :pswitch_e2
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 598
    invoke-static {p2, v2, v3}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 599
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_17c

    .line 600
    :pswitch_f4
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 601
    invoke-static {p2, v2, v3}, Lfr;->c(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->a(Ljava/lang/Object;JZ)V

    .line 602
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_17c

    .line 603
    :pswitch_106
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 604
    invoke-static {p2, v2, v3}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->a(Ljava/lang/Object;JI)V

    .line 605
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    goto :goto_17c

    .line 606
    :pswitch_117
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 607
    invoke-static {p2, v2, v3}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lfr;->a(Ljava/lang/Object;JJ)V

    .line 608
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    goto :goto_17c

    .line 609
    :pswitch_128
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 610
    invoke-static {p2, v2, v3}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->a(Ljava/lang/Object;JI)V

    .line 611
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    goto :goto_17c

    .line 612
    :pswitch_139
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 613
    invoke-static {p2, v2, v3}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lfr;->a(Ljava/lang/Object;JJ)V

    .line 614
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    goto :goto_17c

    .line 615
    :pswitch_14a
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 616
    invoke-static {p2, v2, v3}, Lfr;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lfr;->a(Ljava/lang/Object;JJ)V

    .line 617
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    goto :goto_17c

    .line 618
    :pswitch_15b
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 619
    invoke-static {p2, v2, v3}, Lfr;->d(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lfr;->a(Ljava/lang/Object;JF)V

    .line 620
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    goto :goto_17c

    .line 621
    :pswitch_16c
    invoke-direct {p0, p2, v0}, Lek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 622
    invoke-static {p2, v2, v3}, Lfr;->e(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lfr;->a(Ljava/lang/Object;JD)V

    .line 623
    invoke-direct {p0, p1, v0}, Lek;->b(Ljava/lang/Object;I)V

    :cond_17c
    :goto_17c
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_4

    :cond_180
    iget-object v0, p0, Lek;->o:Lfh;

    .line 624
    invoke-static {v0, p1, p2}, Leu;->a(Lfh;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lek;->h:Z

    if-eqz v0, :cond_18e

    iget-object p0, p0, Lek;->p:Lej;

    .line 625
    invoke-static {p0, p1, p2}, Leu;->a(Lej;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18e
    return-void

    nop

    :pswitch_data_190
    .packed-switch 0x0
        :pswitch_16c
        :pswitch_15b
        :pswitch_14a
        :pswitch_139
        :pswitch_128
        :pswitch_117
        :pswitch_106
        :pswitch_f4
        :pswitch_e2
        :pswitch_dd
        :pswitch_cb
        :pswitch_b9
        :pswitch_a7
        :pswitch_95
        :pswitch_83
        :pswitch_71
        :pswitch_5f
        :pswitch_5a
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_4c
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_35
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_1e
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

    iget-object p0, p0, Lek;->p:Lej;

    .line 559
    invoke-virtual {p0, p1}, Lej;->a(Ljava/lang/Object;)V

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

    if-ge v10, v2, :cond_ec

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

    goto :goto_3a

    :cond_2e
    if-eq v4, v8, :cond_37

    .line 530
    sget-object v0, Lek;->b:Lsun/misc/Unsafe;

    int-to-long v1, v4

    .line 529
    invoke-virtual {v0, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_37
    move/from16 v16, v1

    move v15, v4

    :goto_3a
    const/high16 v0, 0x10000000

    and-int/2addr v0, v13

    if-nez v0, :cond_40

    goto :goto_50

    :cond_40
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    .line 530
    invoke-direct/range {v0 .. v5}, Lek;->a(Ljava/lang/Object;IIII)Z

    move-result v0

    if-nez v0, :cond_50

    return v9

    .line 531
    :cond_50
    :goto_50
    invoke-static {v13}, Lek;->g(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_cb

    const/16 v1, 0x11

    if-eq v0, v1, :cond_cb

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_a2

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_91

    const/16 v1, 0x44

    if-eq v0, v1, :cond_91

    const/16 v1, 0x31

    if-eq v0, v1, :cond_a2

    const/16 v1, 0x32

    if-eq v0, v1, :cond_72

    goto/16 :goto_e5

    .line 534
    :cond_72
    invoke-static {v13}, Lek;->h(I)J

    move-result-wide v0

    invoke-static {v7, v0, v1}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lff;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 535
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_85

    goto :goto_e5

    .line 544
    :cond_85
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
    :cond_91
    invoke-direct {v6, v7, v12, v11}, Lek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 533
    invoke-direct {v6, v11}, Lek;->a(I)Les;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lek;->a(Ljava/lang/Object;ILes;)Z

    move-result v0

    if-nez v0, :cond_e5

    return v9

    .line 536
    :cond_a2
    invoke-static {v13}, Lek;->h(I)J

    move-result-wide v0

    invoke-static {v7, v0, v1}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 537
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e5

    .line 538
    invoke-direct {v6, v11}, Lek;->a(I)Les;

    move-result-object v1

    move v2, v9

    .line 539
    :goto_b7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_e5

    .line 540
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 541
    invoke-interface {v1, v3}, Les;->e(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ca

    add-int/lit8 v2, v2, 0x1

    goto :goto_b7

    :cond_ca
    return v9

    :cond_cb
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    .line 542
    invoke-direct/range {v0 .. v5}, Lek;->a(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 543
    invoke-direct {v6, v11}, Lek;->a(I)Les;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lek;->a(Ljava/lang/Object;ILes;)Z

    move-result v0

    if-nez v0, :cond_e5

    return v9

    :cond_e5
    :goto_e5
    add-int/lit8 v10, v10, 0x1

    move v0, v15

    move/from16 v1, v16

    goto/16 :goto_b

    .line 529
    :cond_ec
    iget-boolean v0, v6, Lek;->h:Z

    if-eqz v0, :cond_fb

    .line 547
    invoke-static/range {p1 .. p1}, Lej;->b(Ljava/lang/Object;)Lcu;

    move-result-object v0

    invoke-virtual {v0}, Lcu;->e()Z

    move-result v0

    if-nez v0, :cond_fb

    return v9

    :cond_fb
    return v3
.end method
