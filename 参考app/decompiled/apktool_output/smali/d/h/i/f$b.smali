.class public Ld/h/i/f$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/h/k/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/h/i/f;->b(Landroid/content/Context;Ld/h/i/e;ILjava/util/concurrent/Executor;Ld/h/i/c;)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/h/k/a<",
        "Ld/h/i/f$e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ld/h/i/c;


# direct methods
.method public constructor <init>(Ld/h/i/c;)V
    .locals 0

    iput-object p1, p0, Ld/h/i/f$b;->a:Ld/h/i/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ld/h/i/f$e;

    .line 1
    iget-object v0, p0, Ld/h/i/f$b;->a:Ld/h/i/c;

    invoke-virtual {v0, p1}, Ld/h/i/c;->a(Ld/h/i/f$e;)V

    return-void
.end method
