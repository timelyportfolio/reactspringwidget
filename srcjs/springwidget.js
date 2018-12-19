import * as SpringComponents from 'react-spring';
import {Fragment} from 'react';
import { reactWidget } from 'reactR';

SpringComponents.Fragment = Fragment;

reactWidget('springwidget', 'output', SpringComponents);