Vim�UnDo� �θs�N���2�M��ы�|����@�������                                     c���    _�                            ����                                                                                                                                                                                                                                                                                                                                                             c���     �      	         			�             5��                          �                      �                         �                     �                          �                      �                         �                      �                          �                      �                         �                      �                         �                      �                          �                      5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             c���    �                ;import { signUp } from '../../../../prisma/utils/users.js';       %const handler = async (req, res) => {   	if (req.method === 'POST') {   		try {               			const data = req.body;       .			const { user, error } = await signUp(data);       %			if (error) throw new Error(error);       !			return res.status(200).json({    +				message: 'User successfully created !',   				user   			});   		}   		catch (error) {   9			return res.status(500).json({ error: error.message });   		}   	}       "	res.setHeader('Allow', ['POST']);   =	res.status(405).end(`Method ${req.method} is not allowed.`);5��                              �      �      5��