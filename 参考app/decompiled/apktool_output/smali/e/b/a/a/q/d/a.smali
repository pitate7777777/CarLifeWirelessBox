.class public abstract Le/b/a/a/q/d/a;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.baidu.carlife.sdk.sender.aidl.ICarLifeSenderInterface"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9

    const/4 v0, 0x1

    const-string v1, "com.baidu.carlife.sdk.sender.aidl.ICarLifeSenderInterface"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_13

    const-string v2, "activityName"

    const/4 v3, 0x6

    const/4 v4, 0x0

    const-string v5, "data"

    const-string v6, "listener"

    const-string v7, "sender"

    const/4 v8, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    move-object p1, p0

    check-cast p1, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;

    .line 1
    iget-object p1, p1, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;

    .line 2
    iget-object p1, p1, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->f:Le/b/a/a/q/b;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Le/b/a/a/q/b;->y()Z

    move-result p1

    .line 4
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 5
    :cond_0
    invoke-static {v7}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v8

    .line 6
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;

    .line 7
    invoke-static {p1, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;

    .line 8
    iget-object p2, p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->f:Le/b/a/a/q/b;

    if-eqz p2, :cond_1

    .line 9
    invoke-interface {p2, p1}, Le/b/a/a/q/b;->q0(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 11
    :cond_1
    invoke-static {v7}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v8

    .line 12
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;

    .line 13
    invoke-static {p1, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;

    .line 14
    iget-object p2, p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->f:Le/b/a/a/q/b;

    if-eqz p2, :cond_2

    .line 15
    invoke-interface {p2, p1}, Le/b/a/a/q/b;->l1(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 17
    :cond_2
    invoke-static {v7}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v8

    .line 18
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Le/b/a/a/q/d/b$a;->c(Landroid/os/IBinder;)Le/b/a/a/q/d/b;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;

    .line 19
    invoke-static {p1, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;

    .line 20
    iget-object p2, p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->g:Landroid/os/RemoteCallbackList;

    .line 21
    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 22
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Le/b/a/a/q/d/b$a;->c(Landroid/os/IBinder;)Le/b/a/a/q/d/b;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;

    .line 23
    invoke-static {p1, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;

    .line 24
    iget p4, p4, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->e:I

    if-eqz p4, :cond_5

    if-eq p4, v0, :cond_4

    const/4 v1, 0x3

    if-eq p4, v1, :cond_3

    goto :goto_1

    .line 25
    :cond_3
    invoke-interface {p1}, Le/b/a/a/q/d/b;->d()V

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Le/b/a/a/q/d/b;->a()V

    :cond_5
    :goto_1
    iget-object p2, p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;

    .line 26
    iget-object p2, p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->g:Landroid/os/RemoteCallbackList;

    .line 27
    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 28
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Le/b/a/a/q/d/c$a;->c(Landroid/os/IBinder;)Le/b/a/a/q/d/c;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;

    .line 29
    invoke-static {p1, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;

    .line 30
    iget-object p4, p4, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->h:Le/b/a/a/q/i;

    .line 31
    invoke-virtual {p4, p1}, Le/b/a/a/q/i;->b(Landroid/os/IInterface;)Le/b/a/a/q/c;

    move-result-object p1

    check-cast p1, Le/b/a/a/q/f;

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    iget-object p2, p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;

    .line 32
    iget-object p2, p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->f:Le/b/a/a/q/b;

    if-eqz p2, :cond_7

    .line 33
    invoke-interface {p2, p1}, Le/b/a/a/q/b;->B(Le/b/a/a/q/f;)V

    .line 34
    :goto_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 35
    :cond_7
    invoke-static {v7}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v8

    .line 36
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Le/b/a/a/q/d/c$a;->c(Landroid/os/IBinder;)Le/b/a/a/q/d/c;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;

    .line 37
    invoke-static {p1, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;

    .line 38
    iget-object p4, p4, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->h:Le/b/a/a/q/i;

    .line 39
    invoke-virtual {p4, p1}, Le/b/a/a/q/i;->a(Landroid/os/IInterface;)Le/b/a/a/q/c;

    move-result-object p1

    check-cast p1, Le/b/a/a/q/f;

    iget-object p2, p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;

    .line 40
    iget-object p2, p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->f:Le/b/a/a/q/b;

    if-eqz p2, :cond_8

    .line 41
    invoke-interface {p2, p1}, Le/b/a/a/q/b;->k1(Le/b/a/a/q/f;)V

    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 43
    :cond_8
    invoke-static {v7}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v8

    .line 44
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Le/b/a/a/q/d/d$a;->c(Landroid/os/IBinder;)Le/b/a/a/q/d/d;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;

    .line 45
    invoke-static {p1, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;

    .line 46
    iget-object p4, p4, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->j:Le/b/a/a/q/i;

    .line 47
    invoke-virtual {p4, p1}, Le/b/a/a/q/i;->b(Landroid/os/IInterface;)Le/b/a/a/q/c;

    move-result-object p1

    check-cast p1, Le/b/a/a/q/g;

    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    iget-object p2, p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;

    .line 48
    iget-object p2, p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->f:Le/b/a/a/q/b;

    if-eqz p2, :cond_a

    .line 49
    invoke-interface {p2, p1}, Le/b/a/a/q/b;->U0(Le/b/a/a/q/g;)V

    .line 50
    :goto_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 51
    :cond_a
    invoke-static {v7}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v8

    .line 52
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Le/b/a/a/q/d/d$a;->c(Landroid/os/IBinder;)Le/b/a/a/q/d/d;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;

    .line 53
    invoke-static {p1, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;

    .line 54
    iget-object p4, p4, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->j:Le/b/a/a/q/i;

    .line 55
    invoke-virtual {p4, p1}, Le/b/a/a/q/i;->a(Landroid/os/IInterface;)Le/b/a/a/q/c;

    move-result-object p1

    check-cast p1, Le/b/a/a/q/g;

    iget-object p2, p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;

    .line 56
    iget-object p2, p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->f:Le/b/a/a/q/b;

    if-eqz p2, :cond_b

    .line 57
    invoke-interface {p2, p1}, Le/b/a/a/q/b;->L0(Le/b/a/a/q/g;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 59
    :cond_b
    invoke-static {v7}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v8

    .line 60
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Le/b/a/a/q/d/e$a;->c(Landroid/os/IBinder;)Le/b/a/a/q/d/e;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;

    .line 61
    invoke-static {p1, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;

    .line 62
    iget-object p4, p4, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->i:Le/b/a/a/q/i;

    .line 63
    invoke-virtual {p4, p1}, Le/b/a/a/q/i;->b(Landroid/os/IInterface;)Le/b/a/a/q/c;

    move-result-object p1

    check-cast p1, Le/b/a/a/q/h;

    if-nez p1, :cond_c

    goto :goto_4

    :cond_c
    iget-object p2, p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;

    .line 64
    iget-object p2, p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->f:Le/b/a/a/q/b;

    if-eqz p2, :cond_d

    .line 65
    invoke-interface {p2, p1}, Le/b/a/a/q/b;->t1(Le/b/a/a/q/h;)V

    .line 66
    :goto_4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 67
    :cond_d
    invoke-static {v7}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v8

    .line 68
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Le/b/a/a/q/d/e$a;->c(Landroid/os/IBinder;)Le/b/a/a/q/d/e;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;

    .line 69
    invoke-static {p1, v6}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;

    .line 70
    iget-object p4, p4, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->i:Le/b/a/a/q/i;

    .line 71
    invoke-virtual {p4, p1}, Le/b/a/a/q/i;->a(Landroid/os/IInterface;)Le/b/a/a/q/c;

    move-result-object p1

    check-cast p1, Le/b/a/a/q/h;

    iget-object p2, p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;

    .line 72
    iget-object p2, p2, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->f:Le/b/a/a/q/b;

    if-eqz p2, :cond_e

    .line 73
    invoke-interface {p2, p1}, Le/b/a/a/q/b;->k(Le/b/a/a/q/h;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 75
    :cond_e
    invoke-static {v7}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v8

    .line 76
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    move-object p1, p0

    check-cast p1, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;

    .line 77
    iget-object p1, p1, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;

    .line 78
    iget-object p1, p1, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->f:Le/b/a/a/q/b;

    if-eqz p1, :cond_f

    .line 79
    invoke-interface {p1}, Le/b/a/a/c;->R()Z

    move-result p1

    goto/16 :goto_0

    :cond_f
    invoke-static {v7}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v8

    .line 80
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    move-object p1, p0

    check-cast p1, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;

    .line 81
    iget-object p1, p1, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;

    .line 82
    iget-object p1, p1, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->f:Le/b/a/a/q/b;

    if-eqz p1, :cond_10

    .line 83
    invoke-interface {p1}, Le/b/a/a/c;->p()Z

    move-result p1

    goto/16 :goto_0

    :cond_10
    invoke-static {v7}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v8

    .line 84
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    move-object p4, p0

    check-cast p4, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;

    .line 85
    invoke-static {p2, v5}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    invoke-static {v1, p1, v8, v4, v3}, Le/b/a/a/o/h/a$a;->b(Le/b/a/a/o/h/a$a;ILjava/lang/Integer;II)Le/b/a/a/o/h/a;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, p1, v2, p2}, Le/b/a/a/o/h/a;->x(II[B)V

    iget-object p1, p4, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;

    .line 86
    iget-object p1, p1, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->f:Le/b/a/a/q/b;

    if-eqz p1, :cond_11

    .line 87
    invoke-interface {p1, v1}, Le/b/a/a/c;->q1(Le/b/a/a/o/h/a;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 89
    :cond_11
    invoke-static {v7}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v8

    .line 90
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    move-object p4, p0

    check-cast p4, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;

    .line 91
    invoke-static {p2, v5}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    invoke-static {v1, p1, v8, v4, v3}, Le/b/a/a/o/h/a$a;->b(Le/b/a/a/o/h/a$a;ILjava/lang/Integer;II)Le/b/a/a/o/h/a;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, p1, v2, p2}, Le/b/a/a/o/h/a;->x(II[B)V

    iget-object p1, p4, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$a;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;

    .line 92
    iget-object p1, p1, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->f:Le/b/a/a/q/b;

    if-eqz p1, :cond_12

    .line 93
    invoke-interface {p1, v1}, Le/b/a/a/c;->y1(Le/b/a/a/o/h/a;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 95
    :cond_12
    invoke-static {v7}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v8

    .line 96
    :cond_13
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
