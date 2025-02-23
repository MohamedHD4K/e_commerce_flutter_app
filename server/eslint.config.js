import globals from "globals";
import pluginJs from "@eslint/js";

/** @type {import('eslint').Linter.Config} */
export default {
  languageOptions: {
    globals: globals.node, // Use Node.js globals
  },
  ...pluginJs.configs.recommended, // Spread the recommended config
  env: {
    browser: false,
    node: true,
    es2021: true,
  },
  parserOptions: {
    ecmaVersion: "latest",
    sourceType: "module",
  },
  rules: {
    "no-unused-vars": "warn",
    "no-console": "off",
    "eqeqeq": "error",
    "semi": ["error", "always"],
    "quotes": ["error", "double"],
  },
};
