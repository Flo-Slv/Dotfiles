Vim�UnDo� ��x��3� #~���T�9��0O�9
       const router = express.Router();            4   2   4   4   1    c��    _�                             ����                                                                                                                                                                                                                                                                                                                                                             c�x     �                   5��                                                  5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�{     �                  import express from 5��                                                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�{     �                  import express from ""5��                                                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�}     �                  import express from "express"5��                                                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�~     �                  �               5��                                                �                                                �                                                 5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�     �                 import 5��                         '                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�     �                 	import {}5��                         (                      �                         .                      �                        -                     5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             c�     �                 import { router }5��                         1                      5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                             c�     �                 import { router } from 5��                         7                      5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             c�     �                 import { router } from ""5��                         7                      �                         7                      �                         6                      �                         5                      �                         4                      �                         3                      �                        2                     �                         3                      �                         2                      �                         1                      �                         0                      �                         /                      �                         .                      �                         -                      �                         ,                      �                         +                      �       
                  *                      �       	                  )                      �                         (                      �                         '                      �                         &                      �                         %                      �                         $                      �                                               5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             c�     �                 const 5��                         &                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�     �                 const {}5��                         '                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�     �                 const { router }5��                         0                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�     �                  �               �                  �               5��                          <                      �                          <                      �                          =                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             c�     �                 5��                          >                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             c�     �                  �               5��                         =               W      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�    �            
   $  console.log('Time: ', Date.now());   	  next();   });   // define the home page route   $router.get('/', function(req, res) {     res.send('Birds home page');   });   // define the about route   )router.get('/about', function(req, res) {     res.send('About birds');5��          	      	      �       �       �       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�    �                  �               5��                          �                     �                          �                     �                          �                     5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             c�     �   	          5��    	                      �                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             c�     �             5��                          4                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c��     �               -router.use(function timeLog(req, res, next) {5��                        �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c��     �               +router.use(function timeLog(_, res, next) {5��                        �                     �                         �                     5�_�                       !    ����                                                                                                                                                                                                                                                                                                                                                             c�     �               *router.use(function timeLog(_, __, next) {5��                          �                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�     �               %router.get("/", function (req, res) {5��                                            5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�
    �               *router.get("/about", function (req, res) {5��                        h                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�2     �               )router.use(function timeLog(_, _, next) {5��              	           v       	               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�5     �                router.use(timeLog(_, _, next) {5��                         }                      5�_�                       !    ����                                                                                                                                                                                                                                                                                                                                                             c�7     �               #router.use(timeLog = (_, _, next) {5��       !                  �                      5�_�                       #    ����                                                                                                                                                                                                                                                                                                                                                             c�:    �               &router.use(timeLog = (_, _, next) => {   $  console.log("Time: ", Date.now());   	  next();   });5��                       v       L       X       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�?     �                 (timeLog = (_, _, next) => {5��                        �                     �                        �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             c�A     �                  (timeLog = (req, _, next) => {5��                        �                     5�_�      !                      ����                                                                                                                                                                                                                                                                                                                                                             c�E     �               #router.get("/", function (_, res) {5��                                            5�_�       "           !           ����                                                                                                                                                                                                                                                                                                                                                             c�H     �               (router.get("/about", function (_, res) {5��                        w                    5�_�   !   #           "          ����                                                                                                                                                                                                                                                                                                                                                             c�J     �               *router.get("/about", function (req, res) {5��              	           l      	               5�_�   "   $           #          ����                                                                                                                                                                                                                                                                                                                                                             c�L     �               !router.get("/about", (req, res) {5��                         w                     5�_�   #   %           $          ����                                                                                                                                                                                                                                                                                                                                                             c�O     �               %router.get("/", function (req, res) {5��              	                 	               5�_�   $   &           %          ����                                                                                                                                                                                                                                                                                                                                                             c�P    �               router.get("/", (req, res) {5��                                              5�_�   %   '           &          ����                                                                                                                                                                                                                                                                                                                                                             c�    �               "  (timeLog = (req, res, next) => {5��                         z                      �                                               �                         ~                      �                         }                      �                         z                      5�_�   &   (           '          ����                                                                                                                                                                                                                                                                                                                                                             c�     �               const { router } = express;5��                         '                      �                         &                      5�_�   '   )           (          ����                                                                                                                                                                                                                                                                                                                                                             c�     �               const router } = express;5��                         -                      �                         ,                      5�_�   (   *           )          ����                                                                                                                                                                                                                                                                                                                                                             c�     �               const router = express;5��                         6                      5�_�   )   +           *          ����                                                                                                                                                                                                                                                                                                                                                             c�     �               const router = express.;5��                         7                      5�_�   *   ,           +          ����                                                                                                                                                                                                                                                                                                                                                             c�    �               const router = express.Router;5��                         =                      5�_�   +   -           ,          ����                                                                                                                                                                                                                                                                                                                                                             c�     �               "  (timeLog = (req, res, next) => {5��                      	                  	       5�_�   ,   .           -          ����                                                                                                                                                                                                                                                                                                                                                             c�     �               +  (function timeLog = (req, res, next) => {5��                         �                      �                         �                      �                         �                      5�_�   -   /           .      &    ����                                                                                                                                                                                                                                                                                                                                                             c��     �               (  (function timeLog(req, res, next) => {5��       %                  �                      �       $                  �                      �       #                  �                      �       "                 �                     5�_�   .   0           /      "    ����                                                                                                                                                                                                                                                                                                                                                             c��    �      
         router.use(   %  (function timeLog(req, res, next) {   &    console.log("Time: ", Date.now());       next();     })   );5��                       {       _       S       5�_�   /   1           0          ����                                                                                                                                                                                                                                                                                                                                                             c��     �               -router.use(function timeLog(req, res, next) {5��                         �                      �                         �                      �                         �                      �                         �                      �                         �                      �                                               �                         ~                      �                         }                      �                         |                      �                         {                      5�_�   0   2           1          ����                                                                                                                                                                                                                                                                                                                                                             c��    �               router.use((req, res, next) {5��                         �                      5�_�   1   3           2          ����                                                                                                                                                                                                                                                                                                                                                             c��     �               "const { router = express.Router();5��                         &                      5�_�   2   4           3          ����                                                                                                                                                                                                                                                                                                                                                             c��     �               $const { router } = express.Router();5��                         .                      5�_�   3               4      #    ����                                                                                                                                                                                                                                                                                                                                                             c��   
 �               const { router } = express;5��       "                  B                      �       !                  A                      �                          @                      �                         ?                      �                         >                      �                         ;                      �                         :                      5��