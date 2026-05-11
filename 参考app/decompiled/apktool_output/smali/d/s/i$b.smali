.class public Ld/s/i$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/s/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Ljava/lang/String;

.field public c:Ld/s/q;

.field public d:Ld/s/f0;

.field public e:Ld/s/i;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Ld/s/i;Ld/s/f0;Ld/s/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/s/i$b;->a:Landroid/view/View;

    iput-object p2, p0, Ld/s/i$b;->b:Ljava/lang/String;

    iput-object p5, p0, Ld/s/i$b;->c:Ld/s/q;

    iput-object p4, p0, Ld/s/i$b;->d:Ld/s/f0;

    iput-object p3, p0, Ld/s/i$b;->e:Ld/s/i;

    return-void
.end method
