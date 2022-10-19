"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const USDC_json_1 = __importDefault(require("../build/contracts/USDC.json"));
const USDC_address = '0xDaE6699babF67F803a82Bbb56c672A968f1baB02';
const USDM_address = '0x8c3a5dE5f5aC9E781A4eD82537B08eDc6C03a6b2';
function main(callback) {
    return __awaiter(this, void 0, void 0, function* () {
        console.log('TypeScript脚本');
        const accounts = yield web3.eth.getAccounts();
        console.log(accounts);
        const balance = yield web3.eth.getBalance(accounts[0]);
        console.log('ETH额度', balance);
        const jimao = new web3.eth.Contract(USDC_json_1.default.abi, USDC_address);
        const usdc_balance = yield jimao.methods.balanceOf(accounts[0]).call();
        console.log('USDC额度', usdc_balance);
        callback();
    });
}
exports.default = main;
