Vim�UnDo�  �R��k"20�`e����$+��<4�L��)   �   *extern uint8_t expactNCall_encoderDecoder(   i         M       M   M   M    ]L/    _�                     L        ����                                                                                                                                                                                                                                                                                                                                                             ]K�)     �   �   �          *        .expectNCalls(nCalls,"ctorSensor")�   �   �          (            .expectOneCall("sendSensor")�   t   v          +            .expectOneCall("receiveSensor")�   Y   [          Cextern uint8_t receiveSensor_MOCK(sensor__this__st *const ps__this,�   R   T          @extern uint8_t sendSensor_MOCK(sensor__this__st *const ps__this,�   K   M          =extern void ctorSensor_MOCK(sensor__this__st *const ps__this,5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ]K�2    �   �   �          :    mock().expectNCalls(numberOfCalls,"sensorErrorHander")�   �   �          ?        sensor__errorHandlerParamList__st *const ps__paramList,�   �   �          )        sensor__this__st *const ps__this,�   �   �          3static inline void expactNCall__sensorErrorHandler(�   �   �          H        sensor__ctorParamList__st *const  ps__paramList, uint8_t nCalls)�   �   �          )        sensor__this__st *const ps__this,�   �   �          +static inline void expactNCall__sensorCtor(�   �   �          )        sensor__this__st *const ps__this,�   �   �          -static inline void expactOneCall__sensorSend(�   o   q          )        sensor__this__st *const ps__this,�   n   p          0static inline void expactOneCall__sensorReceive(�   b   d          @        sensor__errorHandlerParamList__st *const ps__paramList);�   a   c          )        sensor__this__st *const ps__this,�   `   b          $extern void sensorErrorHandler_MOCK(�   Y   [          Kextern uint8_t receiveEncoderDecoder_MOCK(sensor__this__st *const ps__this,�   R   T          Hextern uint8_t sendEncoderDecoder_MOCK(sensor__this__st *const ps__this,�   L   N          9        sensor__ctorParamList__st *const  ps__paramList);�   K   M          Eextern void ctorEncoderDecoder_MOCK(sensor__this__st *const ps__this,�   )   +          #include <mi_ooc_sensor.h>�                % * @details Mock the sensor functions�      
          # * @brief Mock the sensor functions�                  * @file 	mi_ooc_sensor_mock.hpp5�_�                    S       ����                                                                                                                                                                                                                                                                                                                                                             ]K�     �   R   T   �      Pextern uint8_t sendEncoderDecoder_MOCK(encoderDecoder__this__st *const ps__this,5�_�                    S       ����                                                                                                                                                                                                                                                                                                                                                             ]K�     �   R   T   �      Uextern void uint8_t sendEncoderDecoder_MOCK(encoderDecoder__this__st *const ps__this,5�_�                    Z       ����                                                                                                                                                                                                                                                                                                                                                             ]K�     �   Y   [   �      Sextern uint8_t receiveEncoderDecoder_MOCK(encoderDecoder__this__st *const ps__this,5�_�                    Z       ����                                                                                                                                                                                                                                                                                                                                                             ]K�    �   Y   [   �      Kextern receiveEncoderDecoder_MOCK(encoderDecoder__this__st *const ps__this,5�_�      	             c       ����                                                                                                                                                                                                                                                                                                                                                             ]L,
     �   c   f   �       �   c   e   �    5�_�      
           	   e        ����                                                                                                                                                                                                                                                                                                                                                             ]L,     �   e   t   �    �   e   f   �    5�_�   	              
   a        ����                                                                                                                                                                                                                                                                                                                                                             ]L,     �   `   a          ,extern void encoderDecoderErrorHandler_MOCK(5�_�   
                 a       ����                                                                                                                                                                                                                                                                                                                                                             ]L,     �   `   a          1        encoderDecoder__this__st *const ps__this,5�_�                    a       ����                                                                                                                                                                                                                                                                                                                                                             ]L,     �   `   a          H        encoderDecoder__errorHandlerParamList__st *const ps__paramList);5�_�                    a        ����                                                                                                                                                                                                                                                                                                                                                             ]L,     �   `   a           5�_�                    a        ����                                                                                                                                                                                                                                                                                                                                                             ]L,     �   `   a           5�_�                    k   /    ����                                                                                                                                                                                                                                                                                                                                                             ]L,     �   j   l   �      /        .withParameter("maxLength", maxLength);5�_�                   �        ����                                                                                                                                                                                                                                                                                                                                                             ]L,-     �   �   �           5�_�                    x        ����                                                                                                                                                                                                                                                                                                                                                             ]L,<     �   x   �   �    �   x   y   �    5�_�                    y       ����                                                                                                                                                                                                                                                                                                                                                             ]L,A     �   x   z   �      Lextern uint8_t encoderDecoder_MOCK(encoderDecoder__this__st *const ps__this,5�_�                    y       ����                                                                                                                                                                                                                                                                                                                                                             ]L,A     �   x   z   �      Kextern uint8_t ncoderDecoder_MOCK(encoderDecoder__this__st *const ps__this,5�_�                    y       ����                                                                                                                                                                                                                                                                                                                                                             ]L,A     �   x   z   �      Jextern uint8_t coderDecoder_MOCK(encoderDecoder__this__st *const ps__this,5�_�                    y       ����                                                                                                                                                                                                                                                                                                                                                             ]L,A     �   x   z   �      Iextern uint8_t oderDecoder_MOCK(encoderDecoder__this__st *const ps__this,5�_�                    y       ����                                                                                                                                                                                                                                                                                                                                                             ]L,A     �   x   z   �      Hextern uint8_t derDecoder_MOCK(encoderDecoder__this__st *const ps__this,5�_�                    y       ����                                                                                                                                                                                                                                                                                                                                                             ]L,A     �   x   z   �      Gextern uint8_t erDecoder_MOCK(encoderDecoder__this__st *const ps__this,5�_�                    y       ����                                                                                                                                                                                                                                                                                                                                                             ]L,B     �   x   z   �      Fextern uint8_t rDecoder_MOCK(encoderDecoder__this__st *const ps__this,5�_�                    y       ����                                                                                                                                                                                                                                                                                                                                                             ]L,B     �   x   z   �      Eextern uint8_t Decoder_MOCK(encoderDecoder__this__st *const ps__this,5�_�                    y       ����                                                                                                                                                                                                                                                                                                                                                             ]L,B     �   x   z   �      Dextern uint8_t ecoder_MOCK(encoderDecoder__this__st *const ps__this,5�_�                    y       ����                                                                                                                                                                                                                                                                                                                                                             ]L,B     �   x   z   �      Cextern uint8_t coder_MOCK(encoderDecoder__this__st *const ps__this,5�_�                    y       ����                                                                                                                                                                                                                                                                                                                                                             ]L,B     �   x   z   �      Bextern uint8_t oder_MOCK(encoderDecoder__this__st *const ps__this,5�_�                    y       ����                                                                                                                                                                                                                                                                                                                                                             ]L,C     �   x   z   �      Aextern uint8_t der_MOCK(encoderDecoder__this__st *const ps__this,5�_�                     y       ����                                                                                                                                                                                                                                                                                                                                                             ]L,C     �   x   z   �      @extern uint8_t er_MOCK(encoderDecoder__this__st *const ps__this,5�_�      !               y       ����                                                                                                                                                                                                                                                                                                                                                             ]L,C     �   x   z   �      ?extern uint8_t r_MOCK(encoderDecoder__this__st *const ps__this,5�_�       "           !   y       ����                                                                                                                                                                                                                                                                                                                                                             ]L,D     �   x   z   �      >extern uint8_t _MOCK(encoderDecoder__this__st *const ps__this,5�_�   !   #           "   y       ����                                                                                                                                                                                                                                                                                                                                                             ]L,N     �   x   z   �      Iextern uint8_t expactNCall_MOCK(encoderDecoder__this__st *const ps__this,5�_�   "   $           #   y       ����                                                                                                                                                                                                                                                                                                                                                             ]L,N     �   x   z   �      Hextern uint8_t expactNCall_OCK(encoderDecoder__this__st *const ps__this,5�_�   #   %           $   y       ����                                                                                                                                                                                                                                                                                                                                                             ]L,N     �   x   z   �      Gextern uint8_t expactNCall_CK(encoderDecoder__this__st *const ps__this,5�_�   $   &           %   y       ����                                                                                                                                                                                                                                                                                                                                                             ]L,O     �   x   z   �      Fextern uint8_t expactNCall_K(encoderDecoder__this__st *const ps__this,5�_�   %   '           &   y       ����                                                                                                                                                                                                                                                                                                                                                             ]L,P     �   x   z   �      Eextern uint8_t expactNCall_(encoderDecoder__this__st *const ps__this,5�_�   &   (           '   y   *    ����                                                                                                                                                                                                                                                                                                                                                             ]L,V     �   x   {   �      Sextern uint8_t expactNCall_encoderDecoder(encoderDecoder__this__st *const ps__this,5�_�   '   )           (   z       ����                                                                                                                                                                                                                                                                                                                                                             ]L,Y     �   y   {   �      1        encoderDecoder__this__st *const ps__this,5�_�   (   *           )   z       ����                                                                                                                                                                                                                                                                                                                                                             ]L,Y     �   y   {   �      0       encoderDecoder__this__st *const ps__this,5�_�   )   +           *   z       ����                                                                                                                                                                                                                                                                                                                                                             ]L,Y     �   y   {   �      /      encoderDecoder__this__st *const ps__this,5�_�   *   ,           +   z       ����                                                                                                                                                                                                                                                                                                                                                             ]L,[     �   y   {   �      .     encoderDecoder__this__st *const ps__this,5�_�   +   .           ,          ����                                                                                                                                                                                                                                                                                                                                                             ]L,_     �   ~   �   �      '    mock().actualCall("encoderDecoder")5�_�   ,   /   -       .          ����                                                                                                                                                                                                                                                                                                                                                             ]L,e     �   ~   �   �          mock().("encoderDecoder")5�_�   .   0           /   |       ����                                                                                                                                                                                                                                                                                                                                                             ]L,r     �   |   ~   �          �   |   ~   �    5�_�   /   1           0   �       ����                                                                                                                                                                                                                                                                                                                                                             ]L,�     �      �   �      )    mock().expactNCalls("encoderDecoder")5�_�   0   2           1   �        ����                                                                                                                                                                                                                                                                                                                                                             ]L,�     �   �   �   �       �   �   �   �    5�_�   1   3           2   �        ����                                                                                                                                                                                                                                                                                                                                                             ]L,�     �   �   �          8static inline void expactOneCall__encoderDecoderReceive(   1        encoderDecoder__this__st *const ps__this,   :        uint8_t *const pa__destination, uint8_t maxLength)   {               mock()   3            .expectOneCall("receiveEncoderDecoder")   <            .withConstPointerParameter("ps__this", ps__this)   J            .withConstPointerParameter("pa__destination", pa__destination)   3            .withParameter("maxLength", maxLength);   }                           5static inline void expactOneCall__encoderDecoderSend(   1        encoderDecoder__this__st *const ps__this,   7        uint8_t *const pa__source, uint8_t bytesToSend)   {           mock()   0            .expectOneCall("sendEncoderDecoder")   <            .withConstPointerParameter("ps__this", ps__this)   @            .withConstPointerParameter("pa__source", pa__source)   7            .withParameter("bytesToSend", bytesToSend);   }5�_�   2   4           3   �        ����                                                                                                                                                                                                                                                                                                                                                             ]L,�     �   �   �           5�_�   3   5           4   �        ����                                                                                                                                                                                                                                                                                                                                                             ]L,�     �   �   �           5�_�   4   6           5   �        ����                                                                                                                                                                                                                                                                                                                                                             ]L,�     �   �   �           5�_�   5   7           6   �        ����                                                                                                                                                                                                                                                                                                                                                             ]L,�     �   �   �           5�_�   6   8           7   �        ����                                                                                                                                                                                                                                                                                                                                                             ]L,�    �   �   �           5�_�   7   9           8   S        ����                                                                                                                                                                                                                                                                                                                                                             ]L,�     �   R   S       	   Mextern void sendEncoderDecoder_MOCK(encoderDecoder__this__st *const ps__this,   4    uint8_t *const pa__source, uint8_t bytesToSend);                       Pextern void receiveEncoderDecoder_MOCK(encoderDecoder__this__st *const ps__this,   7    uint8_t *const pa__destination, uint8_t maxLength);5�_�   8   :           9   S        ����                                                                                                                                                                                                                                                                                                                                                             ]L,�     �   R   S           5�_�   9   ;           :   S        ����                                                                                                                                                                                                                                                                                                                                                             ]L,�     �   R   S           5�_�   :   <           ;   S        ����                                                                                                                                                                                                                                                                                                                                                             ]L,�     �   R   S           5�_�   ;   =           <   S        ����                                                                                                                                                                                                                                                                                                                                                             ]L,�    �   R   S           5�_�   <   >           =   a        ����                                                                                                                                                                                                                                                                                                                                                             ]L,�     �   a   f   �    �   a   b   �    5�_�   =   ?           >   a        ����                                                                                                                                                                                                                                                                                                                                                             ]L,�     �   a   e   �       �   a   c   �    5�_�   >   @           ?   g   G    ����                                                                                                                                                                                                                                                                                                                                                             ]L,�     �   f   h   �      G        encoderDecoder__errorHandlerParamList__st *const ps__paramList)5�_�   ?   A           @   h        ����                                                                                                                                                                                                                                                                                                                                                             ]L,�   	 �   g   h          {5�_�   @   E           A   g        ����                                                                                                                                                                                                                                                                                                                                                             ]L,�   
 �   g   i   �    5�_�   A   F   C       E   W        ����                                                                                                                                                                                                                                                                                                                                                             ]L-1     �   V   W       
   {       '    mock().actualCall("encoderDecoder")   8        .withConstPointerParameter("ps__this", ps__this)   <        .withConstPointerParameter("pa__source", pa__source)   3        .withParameter("bytesToSend", bytesToSend);   F        .withConstPointerParameter("pa__destination", pa__destination)   /        .withParameter("maxLength", maxLength);       }5�_�   E   G           F   V   5    ����                                                                                                                                                                                                                                                                                                                                                             ]L-3     �   U   W   �      6    uint8_t *const pa__destination, uint8_t maxLength,5�_�   F   H           G   V   5    ����                                                                                                                                                                                                                                                                                                                                                             ]L-5    �   U   W   �      5    uint8_t *const pa__destination, uint8_t maxLength5�_�   G   I           H   p       ����                                                                                                                                                                                                                                                                                                                                                             ]L.     �   o   q   �      0    mock().expactNCalls(nCalls,"encoderDecoder")5�_�   H   J           I   p       ����                                                                                                                                                                                                                                                                                                                                                             ]L.    �   o   q   �      /    mock().expctNCalls(nCalls,"encoderDecoder")5�_�   I   K           J   s   2    ����                                                                                                                                                                                                                                                                                                                                                             ]L.Q    �   r   t   �      3        .withParameter("bytesToSend", bytesToSend);5�_�   J   L           K   i       ����                                                                                                                                                                                                                                                                                                                                                             ]L.�     �   h   j   �      *extern uint8_t expactNCall_encoderDecoder(5�_�   K   M           L   i       ����                                                                                                                                                                                                                                                                                                                                                             ]L.�     �   h   j   �      "extern expactNCall_encoderDecoder(5�_�   L               M   i        ����                                                                                                                                                                                                                                                                                                                                                             ]L/    �   h   j   �      'extern void expactNCall_encoderDecoder(5�_�   A   D   B   E   C   a        ����                                                                                                                                                                                                                                                                                                                                                             ]L-     �   `   h        5�_�   C               D   �        ����                                                                                                                                                                                                                                                                                                                                                             ]L-     �   �   �   �    �   �   �   �                      ,extern void encoderDecoderErrorHandler_MOCK(   1        encoderDecoder__this__st *const ps__this,   H        encoderDecoder__errorHandlerParamList__st *const ps__paramList);5�_�   A           C   B   e        ����                                                                                                                                                                                                                                                                                                                                                             ]L-     �   d   h        5�_�   ,           .   -          ����                                                                                                                                                                                                                                                                                                                                                             ]L,b     �   ~   �   �          mock().(encoderDecoder")5�_�                    �   .    ����                                                                                                                                                                                                                                                                                                                                                             ]L,*     �   �   �        5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ]K��    �   ~   �   �      void 5��