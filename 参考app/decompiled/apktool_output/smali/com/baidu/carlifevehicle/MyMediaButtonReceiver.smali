.class public final Lcom/baidu/carlifevehicle/MyMediaButtonReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-static {p1, v0}, Lf/m/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/KeyEvent;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x57

    const/4 v0, 0x0

    const/4 v1, 0x6

    const v2, 0x68008

    if-eq p1, p2, :cond_2

    const/16 p2, 0x58

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 1
    :cond_1
    sget-object p1, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2, v0}, Le/b/a/a/o/h/a$a;->a(ILjava/lang/Integer;I)Le/b/a/a/o/h/a;

    move-result-object p1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode$Builder;

    move-result-object p2

    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode$Builder;->setKeycode(I)Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode$Builder;

    move-result-object p2

    invoke-virtual {p2}, Le/c/b/p$b;->build()Le/c/b/p;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/b/a/a/o/h/a;->u(Le/c/b/x;)V

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object p2

    invoke-interface {p2, p1}, Le/b/a/a/c;->y1(Le/b/a/a/o/h/a;)V

    goto :goto_0

    .line 2
    :cond_2
    sget-object p1, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2, v0}, Le/b/a/a/o/h/a$a;->a(ILjava/lang/Integer;I)Le/b/a/a/o/h/a;

    move-result-object p1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode$Builder;

    move-result-object p2

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode$Builder;->setKeycode(I)Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode$Builder;

    move-result-object p2

    invoke-virtual {p2}, Le/c/b/p$b;->build()Le/c/b/p;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/b/a/a/o/h/a;->u(Le/c/b/x;)V

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object p2

    invoke-interface {p2, p1}, Le/b/a/a/c;->y1(Le/b/a/a/o/h/a;)V

    :cond_3
    :goto_0
    return-void
.end method
