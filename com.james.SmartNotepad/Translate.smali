.class public Lcom/james/SmartNotepad/Translate;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final w:[Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private a:Landroid/content/SharedPreferences;

.field private b:Ljava/lang/Integer;

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Lcom/james/SmartNotepad/CustomButton;

.field private k:Lcom/james/SmartNotepad/CustomButton;

.field private l:Lcom/james/SmartNotepad/CustomButton;

.field private m:Lcom/james/SmartNotepad/CustomButton;

.field private n:Lcom/james/SmartNotepad/CustomButton;

.field private o:Landroid/widget/Spinner;

.field private p:Landroid/speech/tts/TextToSpeech;

.field private q:Landroid/widget/EditText;

.field private r:Landroid/widget/EditText;

.field private s:Landroid/net/ConnectivityManager;

.field private t:Landroid/content/res/Resources;

.field private u:[Ljava/lang/String;

.field private v:Landroid/widget/ArrayAdapter;

.field private x:I

.field private y:Landroid/net/Uri;

.field private z:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "note"

    aput-object v2, v0, v1

    sput-object v0, Lcom/james/SmartNotepad/Translate;->w:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .registers 5

    const/4 v2, 0x0

    move v0, v2

    :goto_2
    iget-object v1, p0, Lcom/james/SmartNotepad/Translate;->u:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_9

    move v0, v2

    :cond_8
    return v0

    :cond_9
    iget-object v1, p0, Lcom/james/SmartNotepad/Translate;->u:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method static synthetic a(Lcom/james/SmartNotepad/Translate;)Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->y:Landroid/net/Uri;

    return-object v0
.end method

.method private a(Landroid/widget/Spinner;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->u:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    aget-object v0, v0, v1

    const-string v1, "Translate"

    const-string v2, "SmartNotepad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getLanguageCode : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/james/SmartNotepad/az;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const v0, 0x7f070058

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/Translate;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v0, "Translate"

    const-string v3, "SmartNotepad"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "doTranslate("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/james/SmartNotepad/az;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_38
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_6c

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_44
    .catch Lorg/json/JSONException; {:try_start_38 .. :try_end_44} :catch_208
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_44} :catch_1ac
    .catch Ljava/lang/NullPointerException; {:try_start_38 .. :try_end_44} :catch_1c3
    .catchall {:try_start_38 .. :try_end_44} :catchall_1e7

    :catch_44
    move-exception v0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_48
    :try_start_48
    const-string v3, "Translate"

    const-string v4, "IOException"

    invoke-static {v3, v4, v0}, Lcom/james/SmartNotepad/az;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;)V
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_1fc

    if-eqz v1, :cond_20d

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v2

    :cond_55
    :goto_55
    const-string v1, "Translate"

    const-string v2, "SmartNotepad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "   -> return string "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/james/SmartNotepad/az;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_6c
    :try_start_6c
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&langpair="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "%7C"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v0, "Translate"

    const-string v4, "SmartNotepad"

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/james/SmartNotepad/az;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_ab} :catch_44
    .catch Lorg/json/JSONException; {:try_start_6c .. :try_end_ab} :catch_208
    .catch Ljava/lang/InterruptedException; {:try_start_6c .. :try_end_ab} :catch_1ac
    .catch Ljava/lang/NullPointerException; {:try_start_6c .. :try_end_ab} :catch_1c3
    .catchall {:try_start_6c .. :try_end_ab} :catchall_1e7

    const/16 v2, 0x2710

    :try_start_ad
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v2, 0x3a98

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_d4

    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    :catch_cd
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_48

    :cond_d4
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    const-string v2, "Translate"

    const-string v4, "SmartNotepad"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "before : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/james/SmartNotepad/az;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "Translate"

    const-string v4, "SmartNotepad"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "########### translatedText : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "responseData"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "translatedText"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/james/SmartNotepad/az;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "responseData"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "translatedText"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&#39;"

    const-string v5, "\'"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&amp;"

    const-string v5, "&"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Translate"

    const-string v4, "SmartNotepad"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "after : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/james/SmartNotepad/az;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "responseData"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "detectedSourceLanguage"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "&#39;"

    const-string v4, "\'"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "&amp;"

    const-string v4, "&"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Translate"

    const-string v4, "SmartNotepad"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "detectedSourceLanguage:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/james/SmartNotepad/az;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_1ef

    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2
    :try_end_198
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_198} :catch_cd
    .catch Lorg/json/JSONException; {:try_start_ad .. :try_end_198} :catch_198
    .catch Ljava/lang/InterruptedException; {:try_start_ad .. :try_end_198} :catch_203
    .catch Ljava/lang/NullPointerException; {:try_start_ad .. :try_end_198} :catch_1fe
    .catchall {:try_start_ad .. :try_end_198} :catchall_1f7

    :catch_198
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v8

    :goto_19d
    :try_start_19d
    const-string v3, "Translate"

    const-string v4, "JSONException"

    invoke-static {v3, v4, v0}, Lcom/james/SmartNotepad/az;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONException;)V
    :try_end_1a4
    .catchall {:try_start_19d .. :try_end_1a4} :catchall_1fc

    if-eqz v1, :cond_20d

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v2

    goto/16 :goto_55

    :catch_1ac
    move-exception v0

    move-object v1, v2

    :goto_1ae
    :try_start_1ae
    const-string v2, "Translate"

    const-string v3, "InterruptedException"

    invoke-static {v2, v3, v0}, Lcom/james/SmartNotepad/az;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/InterruptedException;)V

    const v0, 0x7f070059

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/Translate;->getString(I)Ljava/lang/String;
    :try_end_1bb
    .catchall {:try_start_1ae .. :try_end_1bb} :catchall_1fc

    move-result-object v0

    if-eqz v1, :cond_55

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_55

    :catch_1c3
    move-exception v0

    move-object v1, v2

    :goto_1c5
    :try_start_1c5
    const-string v2, "Translate"

    const-string v3, "JSONException"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/james/SmartNotepad/az;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f070059

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/Translate;->getString(I)Ljava/lang/String;
    :try_end_1df
    .catchall {:try_start_1c5 .. :try_end_1df} :catchall_1fc

    move-result-object v0

    if-eqz v1, :cond_55

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_55

    :catchall_1e7
    move-exception v0

    move-object v1, v2

    :goto_1e9
    if-eqz v1, :cond_1ee

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1ee
    throw v0

    :cond_1ef
    if-eqz v0, :cond_1f4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1f4
    move-object v0, v1

    goto/16 :goto_55

    :catchall_1f7
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_1e9

    :catchall_1fc
    move-exception v0

    goto :goto_1e9

    :catch_1fe
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_1c5

    :catch_203
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_1ae

    :catch_208
    move-exception v0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_19d

    :cond_20d
    move-object v0, v2

    goto/16 :goto_55
.end method

.method static synthetic b(Lcom/james/SmartNotepad/Translate;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/james/SmartNotepad/Translate;->c:Z

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 13

    const/4 v8, 0x0

    const/16 v0, 0x4d2

    if-ne p1, v0, :cond_f6

    const/4 v0, -0x1

    if-ne p2, v0, :cond_f6

    const-string v0, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/james/SmartNotepad/Translate;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    const-string v2, "Translate"

    const-string v3, "SmartNotepad"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cursorPosition :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/james/SmartNotepad/Translate;->q:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "Translate"

    const-string v5, "SmartNotepad"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "text length :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Translate"

    const-string v5, "SmartNotepad"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "str1 : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - str2 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "Translate"

    const-string v5, "SmartNotepad"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "voiceInput :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v5, "Translate"

    const-string v6, "SmartNotepad"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "voiceInput length : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr v1, v3

    const-string v3, "Translate"

    const-string v5, "SmartNotepad"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "newCursorPosition : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v5, v1}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Translate"

    const-string v2, "SmartNotepad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "inputText : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/james/SmartNotepad/Translate;->q:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/james/SmartNotepad/Translate;->i:I

    :cond_f6
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 12

    const-wide/16 v8, 0x64

    const/4 v4, 0x0

    const v7, 0x7f020034

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_260

    :cond_f
    :goto_f
    :pswitch_f
    return-void

    :pswitch_10
    :try_start_10
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.speech.extra.PROMPT"

    const v2, 0x7f070061

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x4d2

    invoke-virtual {p0, v0, v1}, Lcom/james/SmartNotepad/Translate;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_10 .. :try_end_2b} :catch_2c

    goto :goto_f

    :catch_2c
    move-exception v0

    const-string v0, "Activity Not Found"

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_f

    :pswitch_37
    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->r:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_51

    iget-object v1, p0, Lcom/james/SmartNotepad/Translate;->p:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, v0, v5, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_f

    :cond_51
    const v0, 0x7f070044

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_f

    :pswitch_5c
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/Translate;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/james/SmartNotepad/Translate;->s:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->s:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_11c

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_11c

    move v0, v6

    :goto_75
    if-eqz v0, :cond_1ad

    invoke-virtual {p0, v6}, Lcom/james/SmartNotepad/Translate;->setProgressBarIndeterminateVisibility(Z)V

    const-string v0, "Translate"

    const-string v1, "SmartNotepad"

    const-string v2, "Translate button click"

    invoke-static {v0, v1, v2}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Translate"

    const-string v2, "SmartNotepad"

    invoke-static {v1, v2, v0}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_11f

    const v0, 0x7f07003b

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "Translate"

    const-string v1, "SmartNotepad"

    const-string v2, "fromTEXT not found"

    invoke-static {v0, v1, v2}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_b1
    invoke-virtual {p0, v5}, Lcom/james/SmartNotepad/Translate;->setProgressBarIndeterminateVisibility(Z)V

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->o:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/james/SmartNotepad/Translate;->o:Landroid/widget/Spinner;

    invoke-direct {p0, v1}, Lcom/james/SmartNotepad/Translate;->a(Landroid/widget/Spinner;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a1

    iget-object v1, p0, Lcom/james/SmartNotepad/Translate;->n:Lcom/james/SmartNotepad/CustomButton;

    invoke-virtual {v1, v6}, Lcom/james/SmartNotepad/CustomButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/james/SmartNotepad/Translate;->n:Lcom/james/SmartNotepad/CustomButton;

    invoke-virtual {v1, v7, v5, v5, v5}, Lcom/james/SmartNotepad/CustomButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :goto_d6
    iget-object v1, p0, Lcom/james/SmartNotepad/Translate;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PREFERENCE_SELECTLANG"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v1, "Translate"

    const-string v2, "SmartNotepad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PREFERENCE_SELECTLANG is set by "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Translate"

    const-string v1, "SmartNotepad"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "selectLanguage.getSelectedItemId :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/james/SmartNotepad/Translate;->o:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_11c
    move v0, v5

    goto/16 :goto_75

    :cond_11f
    const-string v1, ""

    iget-object v2, p0, Lcom/james/SmartNotepad/Translate;->o:Landroid/widget/Spinner;

    invoke-direct {p0, v2}, Lcom/james/SmartNotepad/Translate;->a(Landroid/widget/Spinner;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/james/SmartNotepad/Translate;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/james/SmartNotepad/Translate;->r:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "Translate"

    const-string v1, "SmartNotepad"

    const-string v2, "Translate Completed!"

    invoke-static {v0, v1, v2}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->o:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Translate"

    const-string v2, "SmartNotepad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getLanguageName : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/james/SmartNotepad/az;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Translate"

    const-string v2, "SmartNotepad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "selectLangName : ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/Translate;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/james/SmartNotepad/Translate;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-boolean v0, p0, Lcom/james/SmartNotepad/Translate;->d:Z

    if-eqz v0, :cond_195

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/Translate;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_195
    const v0, 0x7f07003c

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_b1

    :cond_1a1
    iget-object v1, p0, Lcom/james/SmartNotepad/Translate;->n:Lcom/james/SmartNotepad/CustomButton;

    invoke-virtual {v1, v5}, Lcom/james/SmartNotepad/CustomButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/james/SmartNotepad/Translate;->n:Lcom/james/SmartNotepad/CustomButton;

    invoke-virtual {v1, v7, v5, v5, v5}, Lcom/james/SmartNotepad/CustomButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_d6

    :cond_1ad
    const v0, 0x7f070059

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/Translate;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/james/SmartNotepad/Translate;->r:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/Translate;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/james/SmartNotepad/Translate;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-boolean v0, p0, Lcom/james/SmartNotepad/Translate;->d:Z

    if-eqz v0, :cond_f

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/Translate;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    invoke-virtual {p0, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    goto/16 :goto_f

    :pswitch_1db
    iget-boolean v0, p0, Lcom/james/SmartNotepad/Translate;->c:Z

    if-eqz v0, :cond_1e9

    const v0, 0x7f07003d

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1e9
    const-string v0, "Translate"

    const-string v1, "SmartNotepad"

    const-string v2, "Reset button click"

    invoke-static {v0, v1, v2}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->q:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->r:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    :pswitch_202
    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->r:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/james/SmartNotepad/Translate;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lez v1, :cond_220

    iget-object v1, p0, Lcom/james/SmartNotepad/Translate;->r:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-gtz v1, :cond_235

    :cond_220
    const-string v0, "Translate"

    const-string v1, "SmartNotepad"

    const-string v2, "fromText or toText data is null"

    invoke-static {v0, v1, v2}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f07003e

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_f

    :cond_235
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070063

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f02002c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/james/SmartNotepad/Translate;->v:Landroid/widget/ArrayAdapter;

    new-instance v3, Lcom/james/SmartNotepad/c;

    invoke-direct {v3, p0, v0}, Lcom/james/SmartNotepad/c;-><init>(Lcom/james/SmartNotepad/Translate;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07002d

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_f

    nop

    :pswitch_data_260
    .packed-switch 0x7f090040
        :pswitch_5c
        :pswitch_f
        :pswitch_1db
        :pswitch_10
        :pswitch_37
        :pswitch_202
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    const-string v0, "Translate"

    const-string v1, "SmartNotepad"

    const-string v2, "onCreate"

    invoke-static {v0, v1, v2}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v7}, Lcom/james/SmartNotepad/Translate;->requestWindowFeature(I)Z

    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/Translate;->setContentView(I)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/james/SmartNotepad/Translate;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/james/SmartNotepad/Translate;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.james.SmartNotepad.action.NoteTranslate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d5

    iput v6, p0, Lcom/james/SmartNotepad/Translate;->x:I

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/james/SmartNotepad/Translate;->y:Landroid/net/Uri;

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f030010

    invoke-virtual {p0}, Lcom/james/SmartNotepad/Translate;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f050005

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/james/SmartNotepad/Translate;->v:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/james/SmartNotepad/Translate;->y:Landroid/net/Uri;

    sget-object v2, Lcom/james/SmartNotepad/Translate;->w:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/james/SmartNotepad/Translate;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/james/SmartNotepad/Translate;->z:Landroid/database/Cursor;

    if-eqz p1, :cond_62

    const-string v0, "origContent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/james/SmartNotepad/Translate;->A:Ljava/lang/String;

    :cond_62
    const v0, 0x7f090043

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/Translate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/james/SmartNotepad/CustomButton;

    iput-object v0, p0, Lcom/james/SmartNotepad/Translate;->j:Lcom/james/SmartNotepad/CustomButton;

    const v0, 0x7f090044

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/Translate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/james/SmartNotepad/CustomButton;

    iput-object v0, p0, Lcom/james/SmartNotepad/Translate;->n:Lcom/james/SmartNotepad/CustomButton;

    const v0, 0x7f090040

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/Translate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/james/SmartNotepad/CustomButton;

    iput-object v0, p0, Lcom/james/SmartNotepad/Translate;->k:Lcom/james/SmartNotepad/CustomButton;

    const v0, 0x7f090042

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/Translate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/james/SmartNotepad/CustomButton;

    iput-object v0, p0, Lcom/james/SmartNotepad/Translate;->l:Lcom/james/SmartNotepad/CustomButton;

    const v0, 0x7f090045

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/Translate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/james/SmartNotepad/CustomButton;

    iput-object v0, p0, Lcom/james/SmartNotepad/Translate;->m:Lcom/james/SmartNotepad/CustomButton;

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->j:Lcom/james/SmartNotepad/CustomButton;

    invoke-virtual {v0, p0}, Lcom/james/SmartNotepad/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->n:Lcom/james/SmartNotepad/CustomButton;

    invoke-virtual {v0, p0}, Lcom/james/SmartNotepad/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->k:Lcom/james/SmartNotepad/CustomButton;

    invoke-virtual {v0, p0}, Lcom/james/SmartNotepad/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->l:Lcom/james/SmartNotepad/CustomButton;

    invoke-virtual {v0, p0}, Lcom/james/SmartNotepad/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->m:Lcom/james/SmartNotepad/CustomButton;

    invoke-virtual {v0, p0}, Lcom/james/SmartNotepad/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->j:Lcom/james/SmartNotepad/CustomButton;

    invoke-virtual {v0}, Lcom/james/SmartNotepad/CustomButton;->a()V

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->n:Lcom/james/SmartNotepad/CustomButton;

    invoke-virtual {v0}, Lcom/james/SmartNotepad/CustomButton;->a()V

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->k:Lcom/james/SmartNotepad/CustomButton;

    invoke-virtual {v0}, Lcom/james/SmartNotepad/CustomButton;->a()V

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->l:Lcom/james/SmartNotepad/CustomButton;

    invoke-virtual {v0}, Lcom/james/SmartNotepad/CustomButton;->a()V

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->m:Lcom/james/SmartNotepad/CustomButton;

    invoke-virtual {v0}, Lcom/james/SmartNotepad/CustomButton;->a()V

    invoke-virtual {p0}, Lcom/james/SmartNotepad/Translate;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v1, v0, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/james/SmartNotepad/Translate;->p:Landroid/speech/tts/TextToSpeech;

    const v0, 0x7f09003f

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/Translate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/james/SmartNotepad/Translate;->o:Landroid/widget/Spinner;

    const v0, 0x7f09003e

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/Translate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/james/SmartNotepad/Translate;->q:Landroid/widget/EditText;

    const v0, 0x7f090041

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/Translate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/james/SmartNotepad/Translate;->r:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->a:Landroid/content/SharedPreferences;

    const-string v1, "PREFERENCE_SELECTLANG"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/james/SmartNotepad/Translate;->b:Ljava/lang/Integer;

    const-string v0, "Translate"

    const-string v1, "SmartNotepad"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PREFERENCE_SELECTLANG:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/james/SmartNotepad/Translate;->b:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x7f050000

    const v1, 0x7f030011

    invoke-static {p0, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Lcom/james/SmartNotepad/Translate;->o:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {p0}, Lcom/james/SmartNotepad/Translate;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/james/SmartNotepad/Translate;->t:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->t:Landroid/content/res/Resources;

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/james/SmartNotepad/Translate;->u:[Ljava/lang/String;

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->u:[Ljava/lang/String;

    array-length v0, v0

    const-string v1, "en"

    invoke-direct {p0, v1}, Lcom/james/SmartNotepad/Translate;->a(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/james/SmartNotepad/Translate;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v0, :cond_159

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/james/SmartNotepad/Translate;->b:Ljava/lang/Integer;

    :cond_159
    const-string v0, "Translate"

    const-string v2, "SmartNotepad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "preferenceSelectLang1 : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/james/SmartNotepad/Translate;->b:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Translate"

    const-string v2, "SmartNotepad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "preferenceSelectLang2 : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_1e2

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->o:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_194
    invoke-virtual {p0}, Lcom/james/SmartNotepad/Translate;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1b5

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->j:Lcom/james/SmartNotepad/CustomButton;

    invoke-virtual {v0, v6}, Lcom/james/SmartNotepad/CustomButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->j:Lcom/james/SmartNotepad/CustomButton;

    const-string v1, "No Support"

    invoke-virtual {v0, v1}, Lcom/james/SmartNotepad/CustomButton;->setText(Ljava/lang/CharSequence;)V

    :cond_1b5
    iput v7, p0, Lcom/james/SmartNotepad/Translate;->i:I

    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/Translate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/google/ads/AdView;

    sget-object v2, Lcom/google/ads/f;->a:Lcom/google/ads/f;

    const-string v3, "a14cc162731f341"

    invoke-direct {v1, p0, v2, v3}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/google/ads/e;

    invoke-direct {v0}, Lcom/google/ads/e;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/ads/AdView;->a(Lcom/google/ads/e;)V

    :goto_1d4
    return-void

    :cond_1d5
    const-string v0, "Translate"

    const-string v1, "SmartNotepad"

    const-string v2, "Unknown action, exiting"

    invoke-static {v0, v1, v2}, Lcom/james/SmartNotepad/az;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/james/SmartNotepad/Translate;->finish()V

    goto :goto_1d4

    :cond_1e2
    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->o:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/james/SmartNotepad/Translate;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_194
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x0

    const v1, 0x7f070014

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020027

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return v2
.end method

.method public onDestroy()V
    .registers 4

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "Translate"

    const-string v1, "SmartNotepad"

    const-string v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->p:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->p:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->p:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    :cond_1a
    return-void
.end method

.method public onInit(I)V
    .registers 5

    const-string v0, "Translate"

    const-string v1, "SmartNotepad"

    const-string v2, "onInit"

    invoke-static {v0, v1, v2}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_3f

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->p:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    iget-object v1, p0, Lcom/james/SmartNotepad/Translate;->p:Landroid/speech/tts/TextToSpeech;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    iget-object v1, p0, Lcom/james/SmartNotepad/Translate;->p:Landroid/speech/tts/TextToSpeech;

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    iget-object v1, p0, Lcom/james/SmartNotepad/Translate;->p:Landroid/speech/tts/TextToSpeech;

    sget-object v2, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2e

    const/4 v1, -0x2

    if-ne v0, v1, :cond_38

    :cond_2e
    const-string v0, "Translate"

    const-string v1, "SmartNotepad"

    const-string v2, "Language is not available."

    invoke-static {v0, v1, v2}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_37
    return-void

    :cond_38
    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->n:Lcom/james/SmartNotepad/CustomButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/james/SmartNotepad/CustomButton;->setEnabled(Z)V

    goto :goto_37

    :cond_3f
    const-string v0, "Translate"

    const-string v1, "SmartNotepad"

    const-string v2, "Could not initialize TextToSpeech."

    invoke-static {v0, v1, v2}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    :goto_7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.james.SmartNotepad.action.NoteList"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/Translate;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method

.method public onRestart()V
    .registers 4

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    const-string v0, "Translate"

    const-string v1, "SmartNotepad"

    const-string v2, "onRestart"

    invoke-static {v0, v1, v2}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .registers 9

    const/high16 v7, -0x10000

    const v6, -0xff0100

    const v5, -0xffff01

    const/high16 v4, -0x1000000

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "Translate"

    const-string v1, "SmartNotepad"

    const-string v2, "onResume"

    invoke-static {v0, v1, v2}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->a:Landroid/content/SharedPreferences;

    const-string v1, "PREFERENCE_VIBRATE"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/james/SmartNotepad/Translate;->d:Z

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->a:Landroid/content/SharedPreferences;

    const-string v1, "PREFERENCE_TOAST"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/james/SmartNotepad/Translate;->c:Z

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->a:Landroid/content/SharedPreferences;

    const-string v1, "PREFERENCE_FONTSIZE_INPUT"

    const-string v2, "16"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/james/SmartNotepad/Translate;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->a:Landroid/content/SharedPreferences;

    const-string v1, "PREFERENCE_FONTSIZE_OUTPUT"

    const-string v2, "17"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/james/SmartNotepad/Translate;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->a:Landroid/content/SharedPreferences;

    const-string v1, "PREFERENCE_FONTCOLOR_INPUT"

    const-string v2, "color1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/james/SmartNotepad/Translate;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->a:Landroid/content/SharedPreferences;

    const-string v1, "PREFERENCE_FONTCOLOR_OUTPUT"

    const-string v2, "color1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/james/SmartNotepad/Translate;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/james/SmartNotepad/Translate;->q:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextSize(F)V

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/james/SmartNotepad/Translate;->r:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextSize(F)V

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->g:Ljava/lang/String;

    const-string v1, "color1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->q:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextColor(I)V

    :cond_80
    :goto_80
    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->h:Ljava/lang/String;

    const-string v1, "color1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_101

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->r:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextColor(I)V

    :cond_8f
    :goto_8f
    iget v0, p0, Lcom/james/SmartNotepad/Translate;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_bc

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->z:Landroid/database/Cursor;

    if-eqz v0, :cond_157

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->z:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    iget v0, p0, Lcom/james/SmartNotepad/Translate;->x:I

    if-nez v0, :cond_147

    const v0, 0x7f0700ca

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/Translate;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/Translate;->setTitle(Ljava/lang/CharSequence;)V

    :cond_ab
    :goto_ab
    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->z:Landroid/database/Cursor;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/james/SmartNotepad/Translate;->q:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/james/SmartNotepad/Translate;->A:Ljava/lang/String;

    if-nez v1, :cond_bc

    iput-object v0, p0, Lcom/james/SmartNotepad/Translate;->A:Ljava/lang/String;

    :cond_bc
    :goto_bc
    iput v3, p0, Lcom/james/SmartNotepad/Translate;->i:I

    return-void

    :cond_bf
    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->g:Ljava/lang/String;

    const-string v1, "color2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->q:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_80

    :cond_cf
    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->g:Ljava/lang/String;

    const-string v1, "color3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->q:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_80

    :cond_df
    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->g:Ljava/lang/String;

    const-string v1, "color4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->q:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_80

    :cond_ef
    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->g:Ljava/lang/String;

    const-string v1, "color5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->q:Landroid/widget/EditText;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_80

    :cond_101
    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->h:Ljava/lang/String;

    const-string v1, "color2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->r:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setTextColor(I)V

    goto/16 :goto_8f

    :cond_112
    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->h:Ljava/lang/String;

    const-string v1, "color3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_123

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->r:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setTextColor(I)V

    goto/16 :goto_8f

    :cond_123
    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->h:Ljava/lang/String;

    const-string v1, "color4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_134

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->r:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setTextColor(I)V

    goto/16 :goto_8f

    :cond_134
    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->h:Ljava/lang/String;

    const-string v1, "color5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->r:Landroid/widget/EditText;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto/16 :goto_8f

    :cond_147
    iget v0, p0, Lcom/james/SmartNotepad/Translate;->x:I

    if-ne v0, v3, :cond_ab

    const v0, 0x7f0700c9

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/Translate;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/Translate;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_ab

    :cond_157
    const v0, 0x7f0700d2

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/Translate;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/james/SmartNotepad/Translate;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/james/SmartNotepad/Translate;->q:Landroid/widget/EditText;

    const v1, 0x7f0700d3

    invoke-virtual {p0, v1}, Lcom/james/SmartNotepad/Translate;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_bc
.end method

.method public onStart()V
    .registers 4

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v0, "Translate"

    const-string v1, "SmartNotepad"

    const-string v2, "onStart"

    invoke-static {v0, v1, v2}, Lcom/james/SmartNotepad/az;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
