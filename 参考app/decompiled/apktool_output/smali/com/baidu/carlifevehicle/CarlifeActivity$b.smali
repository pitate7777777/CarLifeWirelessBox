.class public final Lcom/baidu/carlifevehicle/CarlifeActivity$b;
.super Landroid/support/v4/media/session/MediaSessionCompat$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/carlifevehicle/CarlifeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Intent;)Z
    .locals 4

    const-string v0, "mediaButtonIntent"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->b(Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x57

    const/4 v1, 0x0

    const/4 v2, 0x6

    const v3, 0x68008

    if-eq p1, v0, :cond_2

    const/16 v0, 0x58

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 1
    :cond_1
    sget-object p1, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0, v1}, Le/b/a/a/o/h/a$a;->a(ILjava/lang/Integer;I)Le/b/a/a/o/h/a;

    move-result-object p1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode$Builder;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode$Builder;->setKeycode(I)Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode$Builder;

    move-result-object v0

    invoke-virtual {v0}, Le/c/b/p$b;->build()Le/c/b/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/b/a/a/o/h/a;->u(Le/c/b/x;)V

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v0

    invoke-interface {v0, p1}, Le/b/a/a/c;->y1(Le/b/a/a/o/h/a;)V

    goto :goto_0

    .line 2
    :cond_2
    sget-object p1, Le/b/a/a/o/h/a;->l:Le/b/a/a/o/h/a$a;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0, v1}, Le/b/a/a/o/h/a$a;->a(ILjava/lang/Integer;I)Le/b/a/a/o/h/a;

    move-result-object p1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode$Builder;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode$Builder;->setKeycode(I)Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode$Builder;

    move-result-object v0

    invoke-virtual {v0}, Le/c/b/p$b;->build()Le/c/b/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/b/a/a/o/h/a;->u(Le/c/b/x;)V

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v0

    invoke-interface {v0, p1}, Le/b/a/a/c;->y1(Le/b/a/a/o/h/a;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
