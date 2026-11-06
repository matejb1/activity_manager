// src/api-client/customAxiosInstance.ts

import axios from "axios";
import { getAccessToken } from "./getAccessToken";

const customAxiosInstance = axios.create({
  baseURL: import.meta.env.VITE_API_URL,
});

customAxiosInstance.interceptors.request.use(
  async (config) => {
    const token = await getAccessToken();
    config.headers.set("Authorization", `Bearer ${token}`);
    return config;
  },
  (error) => {
    return Promise.reject(error);
  },
);

export default customAxiosInstance;
