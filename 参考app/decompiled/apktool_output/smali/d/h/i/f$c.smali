.class public Ld/h/i/f$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/util/concurrent/Callable<",
        "Ld/h/i/f$e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ld/h/i/e;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ld/h/i/e;I)V
    .locals 0

    iput-object p1, p0, Ld/h/i/f$c;->a:Ljava/lang/String;

    iput-object p2, p0, Ld/h/i/f$c;->b:Landroid/content/Context;

    iput-object p3, p0, Ld/h/i/f$c;->c:Ld/h/i/e;

    iput p4, p0, Ld/h/i/f$c;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ld/h/i/f$c;->a:Ljava/lang/String;

    iget-object v1, p0, Ld/h/i/f$c;->b:Landroid/content/Context;

    iget-object v2, p0, Ld/h/i/f$c;->c:Ld/h/i/e;

    iget v3, p0, Ld/h/i/f$c;->d:I

    invoke-static {v0, v1, v2, v3}, Ld/h/i/f;->a(Ljava/lang/String;Landroid/content/Context;Ld/h/i/e;I)Ld/h/i/f$e;

    move-result-object v0

    return-object v0
.end method
