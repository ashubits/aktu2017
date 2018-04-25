.class Lcom/onesignal/OneSignalRestClient;
.super Ljava/lang/Object;
.source "OneSignalRestClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    }
.end annotation


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "https://onesignal.com/api/v1/"

.field private static final GET_TIMEOUT:I = 0xea60

.field private static final TIMEOUT:I = 0x1d4c0


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/json/JSONObject;
    .param p3, "x3"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .param p4, "x4"    # I

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3, p4}, Lcom/onesignal/OneSignalRestClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/json/JSONObject;
    .param p3, "x3"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .param p4, "x4"    # I

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3, p4}, Lcom/onesignal/OneSignalRestClient;->startHTTPConnection(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)V

    return-void
.end method

.method private static callResponseHandlerOnFailure(Lcom/onesignal/OneSignalRestClient$ResponseHandler;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "handler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 203
    if-nez p0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignalRestClient$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/onesignal/OneSignalRestClient$6;-><init>(Lcom/onesignal/OneSignalRestClient$ResponseHandler;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 210
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private static callResponseHandlerOnSuccess(Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)V
    .locals 2
    .param p0, "handler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 192
    if-nez p0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignalRestClient$5;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/OneSignalRestClient$5;-><init>(Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 199
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static get(Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    .prologue
    .line 70
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignalRestClient$3;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/OneSignalRestClient$3;-><init>(Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 74
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 75
    return-void
.end method

.method static getSync(Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    .prologue
    const/4 v1, 0x0

    .line 78
    const v0, 0xea60

    invoke-static {p0, v1, v1, p1, v0}, Lcom/onesignal/OneSignalRestClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)V

    .line 79
    return-void
.end method

.method private static getThreadTimeout(I)I
    .locals 1
    .param p0, "timeout"    # I

    .prologue
    .line 49
    add-int/lit16 v0, p0, 0x1388

    return v0
.end method

.method private static makeRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)V
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "jsonBody"    # Lorg/json/JSONObject;
    .param p3, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .param p4, "timeout"    # I

    .prologue
    .line 90
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/onesignal/OneSignalRestClient$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/onesignal/OneSignalRestClient$4;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)V

    const-string v1, "OS_HTTPConnection"

    invoke-direct {v6, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 96
    .local v6, "connectionThread":Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 100
    :try_start_0
    invoke-static {p4}, Lcom/onesignal/OneSignalRestClient;->getThreadTimeout(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v6, v0, v1}, Ljava/lang/Thread;->join(J)V

    .line 101
    invoke-virtual {v6}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    .line 102
    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v7

    .line 104
    .local v7, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method static post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "jsonBody"    # Lorg/json/JSONObject;
    .param p2, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    .prologue
    .line 62
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignalRestClient$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/onesignal/OneSignalRestClient$2;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 66
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 67
    return-void
.end method

.method static postSync(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "jsonBody"    # Lorg/json/JSONObject;
    .param p2, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    .prologue
    .line 86
    const-string v0, "POST"

    const v1, 0x1d4c0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/onesignal/OneSignalRestClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)V

    .line 87
    return-void
.end method

.method static put(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "jsonBody"    # Lorg/json/JSONObject;
    .param p2, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    .prologue
    .line 54
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignalRestClient$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/onesignal/OneSignalRestClient$1;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 58
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 59
    return-void
.end method

.method static putSync(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "jsonBody"    # Lorg/json/JSONObject;
    .param p2, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    .prologue
    .line 82
    const-string v0, "PUT"

    const v1, 0x1d4c0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/onesignal/OneSignalRestClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)V

    .line 83
    return-void
.end method

.method private static startHTTPConnection(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;I)V
    .locals 13
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "jsonBody"    # Lorg/json/JSONObject;
    .param p3, "responseHandler"    # Lcom/onesignal/OneSignalRestClient$ResponseHandler;
    .param p4, "timeout"    # I

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 110
    .local v1, "con":Ljava/net/HttpURLConnection;
    const/4 v2, -0x1

    .line 111
    .local v2, "httpResponse":I
    const/4 v4, 0x0

    .line 114
    .local v4, "json":Ljava/lang/String;
    :try_start_0
    sget-object v10, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OneSignalRestClient: Making request to: https://onesignal.com/api/v1/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 115
    new-instance v10, Ljava/net/URL;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "https://onesignal.com/api/v1/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 117
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 118
    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 119
    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 121
    if-eqz p2, :cond_0

    .line 122
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 124
    :cond_0
    if-eqz p1, :cond_1

    .line 125
    const-string v10, "Content-Type"

    const-string v11, "application/json; charset=UTF-8"

    invoke-virtual {v1, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 127
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 130
    :cond_1
    if-eqz p2, :cond_2

    .line 131
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    .line 132
    .local v8, "strJsonBody":Ljava/lang/String;
    sget-object v10, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OneSignalRestClient: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " SEND JSON: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 134
    const-string v10, "UTF-8"

    invoke-virtual {v8, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 135
    .local v7, "sendBytes":[B
    array-length v10, v7

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 137
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 138
    .local v5, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V

    .line 141
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .end local v7    # "sendBytes":[B
    .end local v8    # "strJsonBody":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 142
    sget-object v10, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OneSignalRestClient: After con.getResponseCode  to: https://onesignal.com/api/v1/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 146
    const/16 v10, 0xc8

    if-ne v2, v10, :cond_5

    .line 147
    sget-object v10, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OneSignalRestClient: Successfully finished request to: https://onesignal.com/api/v1/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 150
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v6, Ljava/util/Scanner;

    const-string v10, "UTF-8"

    invoke-direct {v6, v3, v10}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 151
    .local v6, "scanner":Ljava/util/Scanner;
    const-string v10, "\\A"

    invoke-virtual {v6, v10}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Scanner;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v6}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v4

    .line 152
    :goto_0
    invoke-virtual {v6}, Ljava/util/Scanner;->close()V

    .line 153
    sget-object v10, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " RECEIVED JSON: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 155
    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/onesignal/OneSignalRestClient;->callResponseHandlerOnSuccess(Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    .end local v6    # "scanner":Ljava/util/Scanner;
    :goto_1
    if-eqz v1, :cond_3

    .line 184
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 186
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :cond_3
    :goto_2
    return-void

    .line 151
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "scanner":Ljava/util/Scanner;
    :cond_4
    :try_start_1
    const-string v4, ""

    goto :goto_0

    .line 158
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "scanner":Ljava/util/Scanner;
    :cond_5
    sget-object v10, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OneSignalRestClient: Failed request to: https://onesignal.com/api/v1/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    .line 160
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    if-nez v3, :cond_6

    .line 161
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 163
    :cond_6
    if-eqz v3, :cond_9

    .line 164
    new-instance v6, Ljava/util/Scanner;

    const-string v10, "UTF-8"

    invoke-direct {v6, v3, v10}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 165
    .restart local v6    # "scanner":Ljava/util/Scanner;
    const-string v10, "\\A"

    invoke-virtual {v6, v10}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Scanner;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v6}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v4

    .line 166
    :goto_3
    invoke-virtual {v6}, Ljava/util/Scanner;->close()V

    .line 167
    sget-object v10, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OneSignalRestClient: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " RECEIVED JSON: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 172
    .end local v6    # "scanner":Ljava/util/Scanner;
    :goto_4
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v2, v4, v10}, Lcom/onesignal/OneSignalRestClient;->callResponseHandlerOnFailure(Lcom/onesignal/OneSignalRestClient$ResponseHandler;ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 174
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v9

    .line 175
    .local v9, "t":Ljava/lang/Throwable;
    :try_start_2
    instance-of v10, v9, Ljava/net/ConnectException;

    if-nez v10, :cond_7

    instance-of v10, v9, Ljava/net/UnknownHostException;

    if-eqz v10, :cond_b

    .line 176
    :cond_7
    sget-object v10, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OneSignalRestClient: Could not send last request, device is offline. Throwable: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 180
    :goto_5
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v2, v10, v9}, Lcom/onesignal/OneSignalRestClient;->callResponseHandlerOnFailure(Lcom/onesignal/OneSignalRestClient$ResponseHandler;ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    if-eqz v1, :cond_3

    .line 184
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_2

    .line 165
    .end local v9    # "t":Ljava/lang/Throwable;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "scanner":Ljava/util/Scanner;
    :cond_8
    :try_start_3
    const-string v4, ""

    goto :goto_3

    .line 170
    .end local v6    # "scanner":Ljava/util/Scanner;
    :cond_9
    sget-object v10, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OneSignalRestClient: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " HTTP Code: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " No response body!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 183
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v10

    if-eqz v1, :cond_a

    .line 184
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    throw v10

    .line 178
    .restart local v9    # "t":Ljava/lang/Throwable;
    :cond_b
    :try_start_4
    sget-object v10, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OneSignalRestClient: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Error thrown from network stack. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v9}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5
.end method
