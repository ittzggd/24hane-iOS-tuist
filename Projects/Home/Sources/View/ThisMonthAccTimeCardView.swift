//
//  ThisMonthAccTimeCardView.swift
//  24HANE
//
//  Created by Yunki H on 12/12/23.
//

import SwiftUI
import HaneUtils

struct ThisMonthAccTimeCardView: View {
	@ObservedObject var homeManager: HomeVM

    @Binding var isNoticed: Bool

    @State var isFold: Bool = true

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
//                .foregroundStyle(isFold ? Color(hex: "#735BF2") : .white)

            VStack(spacing: 0) {
                /// First Line
                Button {
                    withAnimation {
                        isFold.toggle()
                    }
                } label: {
                    HStack(spacing: 10) {
                        Text("월 누적 시간")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(isFold ? .white : .black)

                        Spacer()

                        if homeManager.isLoading {
                            LoadingAnimation()
                        } else {
                            HStack(alignment: .bottom, spacing: 0) {
                                Text("\(homeManager.accumulationTimes.monthAccumulationTime / 3600)")
                                    .font(.system(size: 20, weight: .bold))
                                Text("시간 ")
                                    .font(.system(size: 16, weight: .bold))
                                Text("\(homeManager.accumulationTimes.monthAccumulationTime % 3600 / 60)")
                                    .font(.system(size: 20, weight: .bold))
                                Text("분")
                                    .font(.system(size: 16, weight: .bold))
                            }
                            .foregroundColor(isFold ? .white : .black)
                        }

                        Image(systemName: "chevron.right")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundStyle(isFold ? .white : Color(hex: "#9B9797"))
                            .rotationEffect(isFold ? Angle(degrees: 0) : Angle(degrees: 90))
                            .frame(width: 24, height: 24)
                            .isHidden(homeManager.isLoading)
                    }
                    .padding(.leading, 20)
                    .padding(.trailing, 14)
                    .padding(.vertical, 10)
                    .animation(nil, value: isFold)
                }

                if !isFold {
                    /// Second Line
                    HStack(spacing: 0) {
                        Button {
                            if !homeManager.isLoading {
                                isNoticed = true
                            }
                        } label: {
                            HStack(spacing: 2) {
                                Image(systemName: "exclamationmark.circle")
                                    .foregroundStyle(Color(hex: "#9B9797"))
                                    .frame(width: 16, height: 16)
                                Text("인정 시간")
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(Color(hex: "#735BF2"))
                            }
                            .padding(10)
                        }

                        Spacer()

                        HStack(spacing: 10) {
                            Spacer()

                            if homeManager.isLoading {
                                LoadingAnimation()
                            } else {
								// TODO: homeManager -> homeVM
                                HStack(alignment: .bottom, spacing: 0) {
//                                    Text("\(homeManager.thisMonthAcceptedAccumulationTime / 3600)")
//                                        .font(.system(size: 20, weight: .bold))
//                                    Text("시간 ")
//                                        .font(.system(size: 16, weight: .bold))
//                                    Text("\(homeManager.thisMonthAcceptedAccumulationTime % 3600 / 60)")
//                                        .font(.system(size: 20, weight: .bold))
                                    Text("분")
                                        .font(.system(size: 16, weight: .bold))
                                }
                            }

                            Image(systemName: "chevron.right")
                                .font(.system(size: 16, weight: .bold))
                                .foregroundStyle(.clear)
                                .rotationEffect(isFold ? Angle(degrees: 0) : Angle(degrees: 90))
                                .frame(width: 24, height: 24)
                                .isHidden(homeManager.isLoading)
                        }
                        .foregroundColor(Color(hex: "#735BF2"))
                    }
                    .padding(.leading, 10)
                    .padding(.trailing, 14)
                }
            }
        }
        .frame(height: isFold ? 80 : 120)
    }
}
