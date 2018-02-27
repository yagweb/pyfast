# -*- coding: utf-8 -*-
"""
Created on Mon Apr 13 22:17:07 2015
@author: YangWenguang
Issues contact with: hbtmdxywg@126.com
"""
import sys
sys.path.append(r'..\Core')
from FEModel import FEModel, modal
from FASTModel import tower, Blade
def test_bladeModes():
    model = FEModel()
    bladeData = Blade(r'E:\Project\EIS\FEwork\Data\FASTV8_demo_a\demo_a\baseline_blade.dat')
    nodeNum = len(bladeData.nodeData)
    eleNum = nodeNum-1
    length = 38.75
    for i in range(nodeNum):
        x = bladeData.datacell(i, 'BlFract') * length
        model.addNode(i, x, 0)
    #添加梁单元
    for i in range(eleNum):
        rho = (bladeData.datacell(i, 'BMassDen') + bladeData.datacell(i+1, 'BMassDen'))/2
#        E = (bladeData.datacell(i, 'FlpStff')+ bladeData.datacell(i+1, 'FlpStff'))/2
        E = (bladeData.datacell(i, 'EdgStff')+ bladeData.datacell(i+1, 'EdgStff'))/2
        model.addBeam3Eles(i, i, i+1, rho, E)
        
    model.addConstraint(None, ['UX'])
    model.addConstraint([0], None)
        
    model.Initialize(omega = 0, alpha = 0, beta = 0)
    model.info()
    
    result = modal(model, num=7)    
    info = result.listModal(range(6))
    print(info)
    
def test_TowerModes():
    '''
    塔架的前后振动，由于巨大的悬臂质量，重力应该会有影响
    从能力运动方程看，重力的势能项与弹性变形有关，叠加后，相当于刚度下降，使得固有频率下降？
    '''
    model = FEModel()
    towerData = tower(r'E:\Project\EIS\FEwork\Data\FASTV8_demo_a\demo_a\baseline_tower.dat')
    nodeNum = len(towerData.nodeData)
    eleNum = nodeNum-1
    height = 60
    for i in range(nodeNum):
        x = towerData.datacell(i, 'HtFract') * height
        model.addNode(i, x, 0)
    #添加梁单元
    for i in range(eleNum):
        rho = (towerData.datacell(i, 'TMassDen') + towerData.datacell(i+1, 'TMassDen'))/2
        E = (towerData.datacell(i, 'TwFAStif')+ towerData.datacell(i+1, 'TwFAStif'))/2
        model.addBeam3Eles(i, i, i+1, rho, E)
    
    rotormass = 33640
    nacellemass = 72000
    mass = rotormass + nacellemass
#    IZZ = rotormass*3.7**2 + nacellemass*0.6**2
    IZZ = 0  #side-side
    #附加到最后一个节点
    model.addMass2D(eleNum, nodeNum-1, mass, IZZ)
    
    model.addConstraint(None, ['UX'])
    model.addConstraint([0], None)
        
    model.Initialize(omega = 0, alpha = 0, beta = 0)
    model.info()
    
    result = modal(model, num=7)    
    info = result.listModal(range(6))
    print(info)
#    result.plotModal([0, 1, 2, 3], range(eleNum+1), fdKeys = ['UY'])
#    show() 
    
if __name__ == '__main__':
#    test_bladeModes()
    test_TowerModes()