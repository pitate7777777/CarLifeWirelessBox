.class public final Lcom/baidu/carlifevehicle/CarlifeActivity$a;
.super Le/b/b/p/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlifevehicle/CarlifeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Lcom/baidu/carlifevehicle/CarlifeActivity;


# direct methods
.method public constructor <init>(Lcom/baidu/carlifevehicle/CarlifeActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-direct {p0}, Le/b/b/p/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Le/b/b/p/a;->a(I)V

    const/16 v0, 0x3ec

    invoke-virtual {p0, v0}, Le/b/b/p/a;->a(I)V

    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Le/b/b/p/a;->a(I)V

    const/16 v0, 0x7d9

    invoke-virtual {p0, v0}, Le/b/b/p/a;->a(I)V

    const/16 v0, 0x7d5

    invoke-virtual {p0, v0}, Le/b/b/p/a;->a(I)V

    const/16 v0, 0x7d4

    invoke-virtual {p0, v0}, Le/b/b/p/a;->a(I)V

    const/16 v0, 0x7d6

    invoke-virtual {p0, v0}, Le/b/b/p/a;->a(I)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const-string v0, "CarLife_SDK"

    const-string v1, "args"

    const-string v2, "tag"

    const-string v3, "msg"

    invoke-static {p1, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "MsgMainActivityHandler handleMessage get msg: "

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Le/b/b/s/d;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 1
    invoke-static {v0, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v6, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    const/4 v7, 0x3

    if-nez v6, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v7, v0, v5}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    if-eq p1, v6, :cond_15

    const/16 v6, 0x3ea

    if-eq p1, v6, :cond_13

    const/16 v5, 0x3ec

    if-eq p1, v5, :cond_12

    const/16 v5, 0x7d9

    if-eq p1, v5, :cond_f

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_d

    :pswitch_0
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 5
    iget-object p1, p1, Lcom/baidu/carlifevehicle/CarlifeActivity;->C:Le/b/b/o/h;

    if-nez p1, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 7
    iget-object p1, p1, Lcom/baidu/carlifevehicle/CarlifeActivity;->C:Le/b/b/o/h;

    .line 8
    invoke-static {p1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-static {}, Le/b/b/o/i;->G0()Le/b/b/o/i;

    move-result-object v5

    invoke-virtual {p1, v5}, Le/b/b/o/h;->a(Le/b/b/o/g;)V

    new-array p1, v3, [Ljava/lang/Object;

    const-string v5, "mIsCalling="

    iget-object v6, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 9
    iget-boolean v6, v6, Lcom/baidu/carlifevehicle/CarlifeActivity;->K:Z

    .line 10
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v6}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v4

    .line 11
    invoke-static {v0, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v5, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v5, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v5, v7, v0, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 14
    :goto_1
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 15
    iget-boolean p1, p1, Lcom/baidu/carlifevehicle/CarlifeActivity;->K:Z

    if-eqz p1, :cond_4

    .line 16
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 17
    iget-boolean p1, p1, Lcom/baidu/carlifevehicle/CarlifeActivity;->L:Z

    if-eqz p1, :cond_3

    .line 18
    invoke-static {}, Le/b/b/o/i;->G0()Le/b/b/o/i;

    move-result-object p1

    iget-object v5, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-virtual {v5}, Ld/b/k/j;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f008e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Le/b/b/o/i;->F0(Ljava/lang/String;)V

    invoke-static {}, Le/b/b/o/i;->G0()Le/b/b/o/i;

    move-result-object p1

    const v5, 0x7f080083

    invoke-virtual {p1, v5}, Le/b/b/o/i;->E0(I)V

    :goto_2
    invoke-static {}, Le/b/b/o/i;->G0()Le/b/b/o/i;

    move-result-object p1

    goto :goto_3

    :cond_3
    invoke-static {}, Le/b/b/o/i;->G0()Le/b/b/o/i;

    move-result-object p1

    iget-object v5, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-virtual {v5}, Ld/b/k/j;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f008d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Le/b/b/o/i;->F0(Ljava/lang/String;)V

    invoke-static {}, Le/b/b/o/i;->G0()Le/b/b/o/i;

    move-result-object p1

    const v5, 0x7f08006a

    invoke-virtual {p1, v5}, Le/b/b/o/i;->E0(I)V

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, Le/b/b/o/i;->H0()V

    goto/16 :goto_d

    :cond_4
    invoke-static {}, Le/b/b/o/i;->G0()Le/b/b/o/i;

    move-result-object p1

    iget-object v5, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-virtual {v5}, Ld/b/k/j;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f004c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Le/b/b/o/i;->F0(Ljava/lang/String;)V

    invoke-static {}, Le/b/b/o/i;->G0()Le/b/b/o/i;

    move-result-object p1

    .line 19
    iget-object p1, p1, Le/b/b/o/i;->f0:Landroid/widget/Button;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    sput-boolean v3, Le/b/b/o/i;->k0:Z

    .line 20
    invoke-static {}, Le/b/b/o/i;->G0()Le/b/b/o/i;

    move-result-object p1

    const v5, 0x7f08006b

    invoke-virtual {p1, v5}, Le/b/b/o/i;->E0(I)V

    goto/16 :goto_d

    :pswitch_1
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 21
    iget-boolean p1, p1, Lcom/baidu/carlifevehicle/CarlifeActivity;->M:Z

    if-nez p1, :cond_7

    new-array p1, v3, [Ljava/lang/Object;

    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsInitConfig is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 23
    iget-boolean v6, v6, Lcom/baidu/carlifevehicle/CarlifeActivity;->M:Z

    .line 24
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", so delay 500"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v4

    .line 25
    invoke-static {v0, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v5, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v5, :cond_6

    goto :goto_4

    .line 27
    :cond_6
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v5, v7, v0, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    const/16 p1, 0x7d5

    const/16 v5, 0x1f4

    .line 28
    invoke-static {p1, v5}, Le/b/b/p/b;->b(II)V

    return-void

    :cond_7
    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object p1

    invoke-interface {p1}, Le/b/a/a/c;->R()Z

    move-result p1

    if-eqz p1, :cond_8

    const/16 p1, 0x7d4

    invoke-static {p1}, Le/b/b/p/b;->a(I)V

    goto/16 :goto_d

    :cond_8
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 29
    iget-object p1, p1, Lcom/baidu/carlifevehicle/CarlifeActivity;->C:Le/b/b/o/h;

    if-eqz p1, :cond_1c

    .line 30
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 31
    iget-object p1, p1, Lcom/baidu/carlifevehicle/CarlifeActivity;->C:Le/b/b/o/h;

    .line 32
    invoke-static {p1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    :goto_5
    invoke-static {}, Le/b/b/o/p;->F0()Le/b/b/o/p;

    move-result-object v5

    goto/16 :goto_9

    :pswitch_2
    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object p1

    invoke-interface {p1}, Le/b/a/a/c;->R()Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 33
    iget-boolean p1, p1, Lcom/baidu/carlifevehicle/CarlifeActivity;->G:Z

    if-eqz p1, :cond_d

    .line 34
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 35
    iget p1, p1, Lcom/baidu/carlifevehicle/CarlifeActivity;->H:I

    if-ne p1, v3, :cond_d

    .line 36
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover$Builder;

    move-result-object p1

    if-eqz p1, :cond_1c

    const-string v5, "Bt"

    new-array v6, v3, [Ljava/lang/Object;

    const-string v8, "Recover callstatus cover on reception of foreground message"

    aput-object v8, v6, v4

    .line 37
    invoke-static {v5, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v8, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v8, :cond_a

    goto :goto_6

    .line 39
    :cond_a
    invoke-static {v6, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v8, v7, v5, v6}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 40
    :goto_6
    iget-object v5, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 41
    iget v5, v5, Lcom/baidu/carlifevehicle/CarlifeActivity;->H:I

    .line 42
    invoke-virtual {p1, v5}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover$Builder;->setState(I)Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover$Builder;

    iget-object v5, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 43
    iget-object v5, v5, Lcom/baidu/carlifevehicle/CarlifeActivity;->I:Ljava/lang/String;

    .line 44
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, ""

    if-eqz v5, :cond_b

    :try_start_1
    invoke-virtual {p1, v6}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover$Builder;->setPhoneNum(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover$Builder;

    goto :goto_7

    :cond_b
    iget-object v5, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 45
    iget-object v5, v5, Lcom/baidu/carlifevehicle/CarlifeActivity;->I:Ljava/lang/String;

    .line 46
    invoke-virtual {p1, v5}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover$Builder;->setPhoneNum(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover$Builder;

    :goto_7
    iget-object v5, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 47
    iget-object v5, v5, Lcom/baidu/carlifevehicle/CarlifeActivity;->J:Ljava/lang/String;

    .line 48
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p1, v6}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover$Builder;->setName(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover$Builder;

    goto :goto_8

    :cond_c
    iget-object v5, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 49
    iget-object v5, v5, Lcom/baidu/carlifevehicle/CarlifeActivity;->J:Ljava/lang/String;

    .line 50
    invoke-virtual {p1, v5}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover$Builder;->setName(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpCallStatusCoverProto$CarlifeBTHfpCallStatusCover$Builder;

    :goto_8
    sget-object v5, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    const v6, 0x10058

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    invoke-static {v5, v3, v6, v4, v7}, Le/b/a/a/o/h/a$a;->b(Le/b/a/a/o/h/a$a;ILjava/lang/Integer;II)Le/b/a/a/o/h/a;

    move-result-object v5

    invoke-virtual {p1}, Le/c/b/p$b;->build()Le/c/b/p;

    move-result-object p1

    invoke-virtual {v5, p1}, Le/b/a/a/o/h/a;->u(Le/c/b/x;)V

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object p1

    invoke-interface {p1, v5}, Le/b/a/a/c;->y1(Le/b/a/a/o/h/a;)V

    goto/16 :goto_d

    :cond_d
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 51
    iget-object p1, p1, Lcom/baidu/carlifevehicle/CarlifeActivity;->C:Le/b/b/o/h;

    if-eqz p1, :cond_1c

    .line 52
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 53
    iget-object p1, p1, Lcom/baidu/carlifevehicle/CarlifeActivity;->C:Le/b/b/o/h;

    .line 54
    invoke-static {p1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    .line 55
    sget-object v5, Le/b/b/o/s;->d0:Le/b/b/o/s;

    if-nez v5, :cond_e

    new-instance v5, Le/b/b/o/s;

    invoke-direct {v5}, Le/b/b/o/s;-><init>()V

    sput-object v5, Le/b/b/o/s;->d0:Le/b/b/o/s;

    :cond_e
    sget-object v5, Le/b/b/o/s;->d0:Le/b/b/o/s;

    goto :goto_9

    .line 56
    :cond_f
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 57
    iget-boolean p1, p1, Lcom/baidu/carlifevehicle/CarlifeActivity;->E:Z

    if-nez p1, :cond_1c

    .line 58
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 59
    iget-object p1, p1, Lcom/baidu/carlifevehicle/CarlifeActivity;->C:Le/b/b/o/h;

    if-nez p1, :cond_10

    goto/16 :goto_d

    .line 60
    :cond_10
    sget-object v5, Le/b/b/o/r;->j0:Le/b/b/o/r;

    if-nez v5, :cond_11

    new-instance v5, Le/b/b/o/r;

    invoke-direct {v5}, Le/b/b/o/r;-><init>()V

    sput-object v5, Le/b/b/o/r;->j0:Le/b/b/o/r;

    :cond_11
    sget-object v5, Le/b/b/o/r;->j0:Le/b/b/o/r;

    goto :goto_9

    .line 61
    :cond_12
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-virtual {p1, v3}, Lcom/baidu/carlifevehicle/CarlifeActivity;->g0(Z)V

    goto/16 :goto_d

    :cond_13
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 62
    iget-object p1, p1, Lcom/baidu/carlifevehicle/CarlifeActivity;->C:Le/b/b/o/h;

    if-eqz p1, :cond_1c

    .line 63
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 64
    iget-object p1, p1, Lcom/baidu/carlifevehicle/CarlifeActivity;->C:Le/b/b/o/h;

    .line 65
    invoke-static {p1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    goto/16 :goto_5

    :goto_9
    invoke-virtual {p1, v5}, Le/b/b/o/h;->a(Le/b/b/o/g;)V

    goto/16 :goto_d

    .line 66
    :cond_14
    throw v5

    .line 67
    :cond_15
    invoke-static {}, Le/b/b/s/b;->d()Le/b/b/s/b;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 68
    sget-boolean p1, Le/b/b/s/b;->e:Z

    if-eqz p1, :cond_16

    .line 69
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-virtual {p1}, Lcom/baidu/carlifevehicle/CarlifeActivity;->Q()V

    goto :goto_d

    :cond_16
    invoke-static {}, Le/b/b/s/b;->d()Le/b/b/s/b;

    move-result-object p1

    .line 70
    iget p1, p1, Le/b/b/s/b;->a:I

    const/4 v5, 0x5

    if-lt p1, v5, :cond_17

    const/4 p1, 0x1

    goto :goto_a

    :cond_17
    const/4 p1, 0x0

    :goto_a
    if-nez p1, :cond_19

    new-array p1, v3, [Ljava/lang/Object;

    const-string v5, "read conf again"

    aput-object v5, p1, v4

    .line 71
    invoke-static {v0, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v5, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v5, :cond_18

    goto :goto_b

    .line 73
    :cond_18
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v5, v7, v0, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 74
    :goto_b
    invoke-static {}, Le/b/b/s/b;->d()Le/b/b/s/b;

    move-result-object p1

    .line 75
    iget v5, p1, Le/b/b/s/b;->a:I

    add-int/2addr v5, v3

    iput v5, p1, Le/b/b/s/b;->a:I

    new-instance v5, Le/b/b/s/a;

    invoke-direct {v5, p1}, Le/b/b/s/a;-><init>(Le/b/b/s/b;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    const-wide/16 v7, 0x1f4

    .line 76
    invoke-virtual {p0, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_d

    :cond_19
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-static {p1}, Lcom/baidu/carlifevehicle/CarlifeActivity;->P(Lcom/baidu/carlifevehicle/CarlifeActivity;)V

    goto :goto_d

    .line 77
    :cond_1a
    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "handle message exception"

    aput-object v7, v6, v4

    aput-object p1, v6, v3

    .line 78
    invoke-static {v0, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-object v1, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v1, :cond_1b

    goto :goto_c

    .line 80
    :cond_1b
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v0, v2}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :goto_c
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1c
    :goto_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7d4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
